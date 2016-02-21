class roles::monitor {
  require ::stacks::bootstrap

  if !defined(Class['::profiles::icinga']) {
    class { '::profiles::icinga': }
  }
}