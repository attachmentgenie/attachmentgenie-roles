# This class can be used to setup a puppetmaster stack.
#
# @example when declaring the puppetmaster role
#  class { '::roles::puppetmaster': }
#
class roles::puppetmaster inherits roles::node {
  contain 'profiles::cache'
  contain 'profiles::testing'
  contain 'profiles::database'
  contain 'profiles::puppet'

  Class['profiles::cache']
  -> Class['profiles::testing']
  -> Class['profiles::database']
  -> Class['profiles::puppet']

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::puppet::puppetdb']) {
    Postgresql::Server::Db <||> -> Class['puppetdb::server']
    Postgresql::Server::Db <||> -> Class['puppetdb::server::validate_db']
  }
}
