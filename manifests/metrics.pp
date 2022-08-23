# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics inherits roles::node {
  contain 'profiles::database'
  contain 'profiles::alerting'
  contain 'profiles::website'

  Class['profiles::database']
  -> Class['profiles::alerting']
  -> Class['profiles::website']

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::metrics::graphite_web']) {
    Postgresql::Server::Db <||> -> Exec['fill postgresql database']
  }
}
