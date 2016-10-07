# This class can be used to setup a repository.
#
# @example when declaring the repo role
#  class { '::roles::repo': }
#
class roles::repo {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::monitoring': } ->
  class { '::stacks::orchestration': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::security': } ->
  class { '::stacks::gitlab': }
}
