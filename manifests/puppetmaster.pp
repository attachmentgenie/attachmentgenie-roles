# This class can be used to setup a puppetmaster stack.
#
# @example when declaring the puppetmaster role
#  class { '::roles::puppetmaster': }
#
class roles::puppetmaster () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::puppetmaster': }
}