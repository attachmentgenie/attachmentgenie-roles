# This class can be used to setup a basic orchestration.
#
# @example when declaring the orchestration role
#  class { '::roles::orchestration': }
#
class roles::orchestration {
  class { '::stacks::bootstrap': }
  -> class { '::stacks::tools': }
  -> class { '::stacks::monitoring': }
  -> class { '::stacks::orchestration': }
  -> class { '::stacks::runtime': }
  -> class { '::stacks::security': }
  -> class { '::stacks::website': }
}