# This class can be used to setup a kafka stack.
#
# @example when declaring the kafka role
#  class { '::roles::kafka': }
#
class roles::kafka () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::kafka': }
}