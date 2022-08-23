# This class can be used to setup a storage stack.
#
# @example when declaring the storage role
#  class { '::roles::storage': }
#
class roles::storage inherits roles::node {
  class { 'profiles::storage': }
}
