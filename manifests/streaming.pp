# This class can be used to setup a streaming stack.
#
# @example when declaring the streaming role
#  class { '::roles::streaming': }
#
class roles::streaming () {
  anchor { 'streaming::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::streaming': }
  -> anchor { 'streaming::end': }
}
