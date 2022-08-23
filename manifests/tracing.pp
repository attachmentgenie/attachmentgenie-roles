# This class can be used to setup a tracing stack.
#
# @example when declaring the tracing role
#  class { '::roles::tracing': }
#
class roles::tracing inherits roles::node {
  contain 'profiles::cache'
  contain 'profiles::tracing'
  contain 'profiles::website'

  Class['profiles::cache']
  -> Class['profiles::tracing']
  -> Class['profiles::website']
}
