# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics inherits roles::node {
  anchor { 'metrics::begin': }
  -> class { '::profiles::metrics': }
  -> class { '::profiles::mail': }
  -> class { '::profiles::alerting': }
  -> class { '::profiles::website': }
  -> anchor { 'metrics::end': }
}
