# This class can be used to setup a basic orchestration.
#
# @example when declaring the orchestration role
#  class { '::roles::orchestration': }
#
class roles::orchestration inherits roles::node {
  anchor { 'orchestration::begin': }
  -> class { 'profiles::website': }
  -> anchor { 'orchestration::end': }
}
