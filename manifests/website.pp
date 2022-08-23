# This class can be used to setup a webserver node.
#
# @example when declaring the website role
#  class { '::roles::website': }
#
class roles::website inherits roles::node {
  anchor { 'website::begin': }
  -> class { 'profiles::website': }
  -> anchor { 'website::end': }
}
