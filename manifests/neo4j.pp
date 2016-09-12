# This class can be used to setup a neo4j stack.
#
# @example when declaring the neo4j role
#  class { '::roles::neo4j': }
#
class roles::neo4j () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::neo4j': }
}