class roles::proxy {
  class { '::stacks::node': }
  class { '::stacks::proxy': }
}