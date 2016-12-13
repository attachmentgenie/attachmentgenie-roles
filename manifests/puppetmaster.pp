# This class can be used to setup a puppetmaster stack.
#
# @example when declaring the puppetmaster role
#  class { '::roles::puppetmaster': }
#
class roles::puppetmaster () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::database': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::orchestration': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::security': } ->
  class { '::stacks::puppetmaster': }
}