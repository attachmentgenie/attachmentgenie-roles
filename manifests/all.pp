# This class can be used to setup a all stack.
#
# @example when declaring the all role
#  class { '::roles::all': }
#
class roles::all () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::alerting': } ->
  class { '::stacks::database': } ->
  class { '::stacks::gitlab': } ->
  class { '::stacks::logging': } ->
  class { '::stacks::mail': } ->
  class { '::stacks::metrics': } ->
  class { '::stacks::orchestration': } ->
  class { '::stacks::proxy': } ->
  class { '::stacks::puppetmaster': } ->
  class { '::stacks::security': } ->
  class { '::stacks::streaming': } ->
  class { '::stacks::testing': } ->
  class { '::stacks::website': }
}