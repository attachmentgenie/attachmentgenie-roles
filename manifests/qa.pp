# This class can be used to setup a basic qa.
#
# @example when declaring the qa role
#  class { '::roles::qa': }
#
class roles::qa {
  class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::testing': }
  -> class { '::profiles::website': }
}
