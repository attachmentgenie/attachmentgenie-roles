require 'spec_helper'
describe 'roles::neo4j' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::neo4j') }
  end
end
