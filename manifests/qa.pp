# This class can be used to setup a basic qa.
#
# @example when declaring the qa role
#  class { '::roles::qa': }
#
class roles::qa inherits roles::node {
  anchor { 'qa::begin': }
  -> class { 'profiles::testing': }
  -> class { 'profiles::website': }
  -> anchor { 'qa::end': }
}
