# This class can be used to setup a alerting stack.
#
# @example when declaring the alerting role
#  class { '::roles::alerting': }
#
class roles::alerting inherits roles::node {
  anchor { 'alerting::begin': }
  -> class { '::profiles::database': }
  -> class { '::profiles::alerting': }
  -> class { '::profiles::website': }
  -> anchor { 'alerting::end': }

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::alerting::icinga2']) {
    Postgresql::Server::Db <||> -> Exec['idopgsql-import-schema']
  }

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::alerting::icingaweb2']) {
    Postgresql::Server::Db <||> -> Exec['import schema']
  }
}
