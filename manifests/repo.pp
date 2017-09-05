# This class can be used to setup a repository.
#
# @example when declaring the repo role
#  class { '::roles::repo': }
#
class roles::repo {
  anchor { 'repo::begin': }
  -> class { '::profiles::bootstrap': }
  -> class { '::profiles::tools': }
  -> class { '::profiles::monitoring': }
  -> class { '::profiles::orchestration': }
  -> class { '::profiles::runtime': }
  -> class { '::profiles::security': }
  -> class { '::profiles::repo': }
  -> class { '::profiles::website': }
  -> anchor { 'repo::end': }
}
