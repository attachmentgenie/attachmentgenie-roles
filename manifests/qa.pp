# This class can be used to setup a basic qa.
#
# @example when declaring the qa role
#  class { '::roles::qa': }
#
class roles::qa inherits roles::node {
  contain 'profiles::testing'
  contain 'profiles::website'

  Class['profiles::testing']
  -> Class['profiles::website']
}
