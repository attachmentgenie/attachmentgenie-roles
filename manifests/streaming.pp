# This class can be used to setup a streaming stack.
#
# @example when declaring the streaming role
#  class { '::roles::streaming': }
#
class roles::streaming () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::streaming': }
}