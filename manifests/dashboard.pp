# This class can be used to setup a dashboard stack.
#
# @example when declaring the dashboard role
#  class { '::roles::dashboard': }
#
class roles::dashboard inherits roles::node {
  anchor { 'dashboard::begin': }
  -> class { '::profiles::dashboard': }
  -> class { '::profiles::website': }
  -> anchor { 'dashboard::end': }
}
