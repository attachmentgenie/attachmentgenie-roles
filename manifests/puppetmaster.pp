class roles::puppetmaster () {
  class { '::epel': } ->
  class { '::profiles::time': } ->
  class { '::profiles::selinux': } ->
  class { '::profiles::firewall': } ->
  class { '::stacks::puppetmaster': }
}