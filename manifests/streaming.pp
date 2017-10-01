# This class can be used to setup a streaming stack.
#
# @example when declaring the streaming role
#  class { '::roles::streaming': }
#
class roles::streaming inherits roles::node {
  anchor { 'streaming::begin': }
  -> class { '::profiles::streaming': }
  -> anchor { 'streaming::end': }
}
