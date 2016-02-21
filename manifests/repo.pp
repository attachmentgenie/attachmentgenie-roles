class roles::repo {
  require ::stacks::bootstrap

  class { '::stacks::gitlab': }
  class { '::stacks::pulp': }
}