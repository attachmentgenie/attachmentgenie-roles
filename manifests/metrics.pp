# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics inherits roles::node {
  anchor { 'metrics::begin': }
  -> class { 'profiles::database': }
  -> class { 'profiles::alerting': }
  -> class { 'profiles::website': }
  -> anchor { 'metrics::end': }

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::metrics::graphite_web']) {
    Postgresql::Server::Db <||> -> Exec['fill postgresql database']
  }
}
