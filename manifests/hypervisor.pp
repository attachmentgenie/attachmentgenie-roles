class roles::hypervisor {
  require ::stacks::bootstrap

  class { '::stacks::openstack': }
}