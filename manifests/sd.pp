# This class can be used to setup a basic sd.
#
# @example when declaring the sd role
#  class { '::roles::sd': }
#
class roles::sd inherits roles::node {
  anchor { 'sd::begin': }
  -> class { '::profiles::website': }
  -> anchor { 'sd::end': }
}