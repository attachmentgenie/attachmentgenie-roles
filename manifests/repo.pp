# This class can be used to setup a repository.
#
# @example when declaring the repo role
#  class { '::roles::repo': }
#
class roles::repo inherits roles::node {
  anchor { 'repo::begin': }
  -> class { '::profiles::repo': }
  -> class { '::profiles::website': }
  -> anchor { 'repo::end': }
}
