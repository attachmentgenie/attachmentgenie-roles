# This class can be used to setup a basic sd.
#
# @example when declaring the sd role
#  class { '::roles::sd': }
#
class roles::sd {
  class { '::stacks::bootstrap': }
  -> class { '::stacks::tools': }
  -> class { '::stacks::monitoring': }
  -> class { '::stacks::orchestration': }
  -> class { '::stacks::runtime': }
  -> class { '::stacks::security': }
  -> class { '::stacks::website': }
}