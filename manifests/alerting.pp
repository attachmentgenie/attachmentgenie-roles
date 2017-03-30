# This class can be used to setup a alerting stack.
#
# @example when declaring the alerting role
#  class { '::roles::alerting': }
#
class roles::alerting () {
  class { '::stacks::bootstrap': }
  -> class { '::stacks::tools': }
  -> class { '::stacks::monitoring': }
  -> class { '::stacks::runtime': }
  -> class { '::stacks::database': }
  -> class { '::stacks::alerting': }
  -> class { '::stacks::mail': }
  -> class { '::stacks::website': }
}