# This class can be used to setup a scheduler stack.
#
# @example when declaring the scheduler role
#  class { '::roles::scheduler': }
#
class roles::scheduler inherits roles::node {
  class { 'profiles::scheduling': }
}
