# This class can be used to setup a alerting stack.
#
# @example when declaring the alerting role
#  class { '::roles::alerting': }
#
class roles::alerting () {
  anchor { 'alerting::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::alerting': }
  -> class { '::profiles::website': }
  -> anchor { 'alerting::end': }
}
