# This class can be used to setup a metrics stack.
#
# @example when declaring the metrics role
#  class { '::roles::metrics': }
#
class roles::metrics () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::cache': } ->
  class { '::stacks::tools': } ->
  class { '::stacks::database': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::alerting': } ->
  class { '::stacks::mail': } ->
  class { '::stacks::metrics': } ->
  class { '::stacks::website': }
}