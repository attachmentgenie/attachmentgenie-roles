# This class can be used to setup a tracing stack.
#
# @example when declaring the tracing role
#  class { '::roles::tracing': }
#
class roles::tracing inherits roles::node {
  anchor { 'tracing::begin': }
  -> class { 'profiles::cache': }
  -> class { 'profiles::tracing': }
  -> class { 'profiles::website': }
  -> anchor { 'tracing::end': }
}
