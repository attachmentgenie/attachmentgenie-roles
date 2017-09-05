# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics () {
  anchor { 'metrics::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::cache': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::database': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::metrics': }
  -> class { '::profiles::mail': }
  -> class { '::profiles::alerting': }
  -> class { '::profiles::website': }
  -> anchor { 'metrics::end': }
}
