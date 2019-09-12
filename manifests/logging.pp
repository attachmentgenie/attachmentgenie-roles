# This class can be used to setup a logging stack.
#
# @example when declaring the logging role
#  class { '::roles::logging': }
#
class roles::logging inherits roles::node {
  anchor { 'logging::begin': }
  -> class { '::profiles::logging': }
  -> class { '::profiles::website': }
  -> anchor { 'logging::end': }
}
