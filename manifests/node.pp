class roles::node {
  class { '::profiles::time': }
  class { '::profiles::firewall': } ->
  class { '::profiles::puppet': }
  class { '::stacks::node': }
}