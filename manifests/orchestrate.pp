class roles::orchestrate {
  require ::stacks::bootstrap

  class { '::stacks::testing': }
}