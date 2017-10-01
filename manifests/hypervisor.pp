# This class can be used to setup a hypervisor stack.
#
# @example when declaring the hypervisor role
#  class { '::roles::hypervisor': }
#
class roles::hypervisor inherits roles::node {
  anchor { 'hypervisor::begin': }
  -> class { '::profiles::kubernetes': }
  -> anchor { 'hypervisor::end': }
}
