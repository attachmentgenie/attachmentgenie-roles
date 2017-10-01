# This class can be used to setup a database stack.
#
# @example when declaring the database role
#  class { '::roles::database': }
#
class roles::database inherits roles::node {
  anchor { 'database::begin': }
  -> class { '::profiles::database': }
  -> anchor { 'database::end': }
}
