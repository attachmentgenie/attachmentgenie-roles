# This class can be used to setup a basic qa.
#
# @example when declaring the qa role
#  class { '::roles::qa': }
#
class roles::qa {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::orchestration': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::security': } ->
  class { '::stacks::testing': }
}