class roles::puppetmaster () {
  class { '::stacks::node': } ->
  class { '::stacks::puppetmaster': }
}