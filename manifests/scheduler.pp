# This class can be used to setup a scheduler stack.
#
# @example when declaring the scheduler role
#  class { '::roles::scheduler': }
#
class roles::scheduler inherits roles::node {
  anchor { 'scheduler::begin': }
  -> class { 'profiles::scheduling': }
  -> anchor { 'scheduler::end': }
}
