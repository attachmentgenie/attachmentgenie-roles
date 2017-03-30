# This class can be used to setup a all stack.
#
# @example when declaring the all role
#  class { '::roles::all': }
#
class roles::all () {
  class { '::stacks::bootstrap': }
  -> class { '::stacks::tools': }
  -> class { '::stacks::monitoring': }
  -> class { '::stacks::runtime': }
  -> class { '::stacks::alerting': }
  -> class { '::stacks::database': }
  -> class { '::stacks::gitlab': }
  -> class { '::stacks::logging': }
  -> class { '::stacks::mail': }
  -> class { '::stacks::metrics': }
  -> class { '::stacks::orchestration': }
  -> class { '::stacks::proxy': }
  -> class { '::stacks::puppet': }
  -> class { '::stacks::security': }
  -> class { '::stacks::streaming': }
  -> class { '::stacks::testing': }
  -> class { '::stacks::website': }

  if defined(Class['profiles::postgresql']) and defined(Class['profiles::puppetdb']) {
    Postgresql::Server::Db <||> -> Class['::puppetdb::server']
    Postgresql::Server::Db <||> -> Class['::puppetdb::server::validate_db']
  }

  if defined(Class['profiles::memcached']) and defined(Class['profiles::foreman']) {
    Class['::memcached'] -> Class['::foreman']
  }
}