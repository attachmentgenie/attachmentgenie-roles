# This class can be used to setup a prometheus stack.
#
# @example when declaring the prometheus role
#  class { '::roles::prometheus': }
#
class roles::prometheus () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::metrics': }
}