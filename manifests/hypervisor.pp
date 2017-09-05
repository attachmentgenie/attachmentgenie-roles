# This class can be used to setup a hypervisor stack.
#
# @example when declaring the hypervisor role
#  class { '::roles::hypervisor': }
#
class roles::hypervisor () {
  anchor { 'hypervisor::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::kubernetes': }
  -> anchor { 'hypervisor::end': }
}
