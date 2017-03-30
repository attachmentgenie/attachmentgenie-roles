# This class can be used to setup a basic node.
#
# @example when declaring the node role
#  class { '::roles::node': }
#
class roles::node {
  class { '::stacks::bootstrap': }
  -> class { '::stacks::tools': }
  -> class { '::stacks::monitoring': }
  -> class { '::stacks::orchestration': }
  -> class { '::stacks::runtime': }
  -> class { '::stacks::security': }
}