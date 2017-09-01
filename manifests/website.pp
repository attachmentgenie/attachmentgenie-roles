# This class can be used to setup a webserver node.
#
# @example when declaring the website role
#  class { '::roles::website': }
#
class roles::website {
  class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::website': }
}
