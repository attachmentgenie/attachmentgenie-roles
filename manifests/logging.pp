# This class can be used to setup a logging stack.
#
# @example when declaring the logging role
#  class { '::roles::logging': }
#
class roles::logging () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::logging': } ->
  class { '::stacks::website': }
}