class roles::website {
  require ::stacks::bootstrap

  class { '::stacks::website': }
}