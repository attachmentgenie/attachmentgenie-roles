# This class can be used to setup a dashboard stack.
#
# @example when declaring the dashboard role
#  class { '::roles::dashboard': }
#
class roles::dashboard inherits roles::node {
  contain 'profiles::dashboard'
  contain 'profiles::website'

  Class['profiles::dashboard']
  -> Class['profiles::website']
}
