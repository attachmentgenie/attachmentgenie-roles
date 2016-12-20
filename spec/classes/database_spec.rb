require 'spec_helper'
describe 'roles::database' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::database') }
  end
end
