require 'spec_helper'
describe 'roles::website' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::website') }
  end
end
