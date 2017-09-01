# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics () {
  class { '::profiles::bootstrap': }
  -> class { '::profiles::cache': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::database': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::alerting': }
  -> class { '::profiles::mail': }
  -> class { '::profiles::metrics': }
  -> class { '::profiles::website': }
}
