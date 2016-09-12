# This class can be used to setup a webserver node.
#
# @example when declaring the website role
#  class { '::roles::website': }
#
class roles::website {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::website': } ->
  class { '::stacks::proxy': }
}