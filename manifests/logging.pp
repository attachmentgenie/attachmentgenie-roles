# This class can be used to setup a logging stack.
#
# @example when declaring the logging role
#  class { '::roles::logging': }
#
class roles::logging inherits roles::node {
  contain 'profiles::cache'
  contain 'profiles::logging'
  contain 'profiles::website'

  Class['profiles::cache']
  -> Class['profiles::logging']
  -> Class['profiles::website']
}
