# This class can be used to setup a logging stack.
#
# @example when declaring the logging role
#  class { '::roles::logging': }
#
class roles::logging inherits roles::node {
  anchor { 'logging::begin': }
  -> class { '::profiles::logging': }
  -> class { '::profiles::website': }
  -> anchor { 'logging::end': }

  if $::osfamily == 'RedHat' {
    if defined(Class['profiles::runtime::java']) and defined(Class['profiles::monitoring::logstash']) {
      Package['java'] -> Yumrepo['elastic-5.x']
    }
    if defined(Class['profiles::runtime::java']) and defined(Class['profiles::logging::elasticsearch']) {
      Package['java'] -> Yumrepo['elasticsearch']
    }
  }
}
