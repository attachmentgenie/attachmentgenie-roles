# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::metrics': }
}