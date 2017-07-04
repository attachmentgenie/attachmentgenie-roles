# This class can be used to setup a logging stack.
#
# @example when declaring the logging role
#  class { '::roles::logging': }
#
class roles::logging () {
  class { '::stacks::bootstrap': }
  -> class { '::stacks::tools': }
  -> class { '::stacks::monitoring': }
  -> class { '::stacks::runtime': }
  -> class { '::stacks::logging': }
  -> class { '::stacks::website': }

  if defined(Class['profiles::java']) and defined(Class['profiles::logstash']) {
    Package['java'] -> Yumrepo['elastic-5.x']
  }
  if defined(Class['profiles::java']) and defined(Class['profiles::elasticsearch']) {
    Package['java'] -> Yumrepo['elasticsearch']
  }
}