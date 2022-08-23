# This class can be used to setup a basic orchestration.
#
# @example when declaring the orchestration role
#  class { '::roles::orchestration': }
#
class roles::orchestration inherits roles::node {
  class { 'profiles::website': }
}
