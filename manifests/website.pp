# This class can be used to setup a webserver node.
#
# @example when declaring the website role
#  class { '::roles::website': }
#
class roles::website {
  anchor { 'website::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::website': }
  -> anchor { 'website::end': }
}
