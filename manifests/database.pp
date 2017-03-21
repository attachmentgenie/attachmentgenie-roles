# This class can be used to setup a database stack.
#
# @example when declaring the database role
#  class { '::roles::database': }
#
class roles::database () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::tools': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::orchestration': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::security': } ->
  class { '::stacks::database': }
}