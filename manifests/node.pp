# This class can be used to setup a basic node.
#
# @example when declaring the node role
#  class { '::roles::node': }
#
class roles::node {
  contain 'profiles::bootstrap'
  contain 'profiles::tools'
  contain 'profiles::mail'
  contain 'profiles::metrics'
  contain 'profiles::monitoring'
  contain 'profiles::networking'
  contain 'profiles::orchestration'
  contain 'profiles::runtime'
  contain 'profiles::security'

  Class['profiles::bootstrap']
  -> Class['profiles::networking']
  -> Class['profiles::tools']
  -> Class['profiles::mail']
  -> Class['profiles::metrics']
  -> Class['profiles::monitoring']
  -> Class['profiles::orchestration']
  -> Class['profiles::runtime']
  -> Class['profiles::security']
}
