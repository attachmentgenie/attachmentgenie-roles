# This class can be used to setup a puppetmaster stack.
#
# @example when declaring the puppetmaster role
#  class { '::roles::puppetmaster': }
#
class roles::puppetmaster () {
  anchor { 'puppetmaster::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::cache': }
  -> class { '::profiles::database': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::mq': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::puppet': }
  -> anchor { 'puppetmaster::end': }

  if defined(Class['profiles::database::postgresql']) and defined(Class['profiles::puppet::puppetdb']) {
    Postgresql::Server::Db <||> -> Class['::puppetdb::server']
    Postgresql::Server::Db <||> -> Class['::puppetdb::server::validate_db']
  }

  if defined(Class['profiles::cache::memcached']) and defined(Class['profiles::puppet::foreman']) {
    Class['::memcached'] -> Class['::foreman']
  }
}
