# This class can be used to setup a database stack.
#
# @example when declaring the database role
#  class { '::roles::database': }
#
class roles::database () {
  class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::database': }
}
