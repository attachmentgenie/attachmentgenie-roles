# This class can be used to setup a basic orchestration.
#
# @example when declaring the orchestration role
#  class { '::roles::orchestration': }
#
class roles::orchestration {
  class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::website': }
}
