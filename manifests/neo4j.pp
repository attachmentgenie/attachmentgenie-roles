class roles::neo4j () {
  class { '::stacks::bootstrap': } ->
  class { '::stacks::runtime': } ->
  class { '::stacks::neo4j': }
}