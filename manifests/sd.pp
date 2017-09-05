# This class can be used to setup a basic sd.
#
# @example when declaring the sd role
#  class { '::roles::sd': }
#
class roles::sd {
  anchor { 'sd::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::website': }
  -> anchor { 'sd::end': }
}