# This class can be used to setup a dns stack.
#
# @example when declaring the dns role
#  class { '::roles::dns': }
#
class roles::dns inherits roles::node {
  class { 'profiles::dns': }
}
