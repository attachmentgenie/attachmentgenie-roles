# This class can be used to setup a basic node.
#
# @example when declaring the node role
#  class { '::roles::node': }
#
class roles::node {
  anchor { 'node::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::metrics': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> anchor { 'node::end': }
}
