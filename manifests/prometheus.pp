class roles::prometheus () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::prometheus': }
}