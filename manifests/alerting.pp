# This class can be used to setup a alerting stack.
#
# @example when declaring the alerting role
#  class { '::roles::alerting': }
#
class roles::alerting inherits roles::node {
  contain 'profiles::database'
  contain 'profiles::alerting'
  contain 'profiles::website'

  Class['profiles::database']
  -> Class['profiles::alerting']
  -> Class['profiles::website']

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::monitoring::icinga2']) {
    Postgresql::Server::Db <||> -> Exec['idopgsql-import-schema']
  }

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::alerting::icingaweb2']) {
    Postgresql::Server::Db <||> -> Exec['import schema']
  }
}
