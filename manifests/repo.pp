# This class can be used to setup a repository.
#
# @example when declaring the repo role
#  class { '::roles::repo': }
#
class roles::repo inherits roles::node {
  contain 'profiles::repo'
  contain 'profiles::website'

  Class['profiles::repo']
  -> Class['profiles::website']
}
