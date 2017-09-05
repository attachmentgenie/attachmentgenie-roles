require 'spec_helper'
describe 'roles::database' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::database') }
    it { should contain_anchor('database::begin') }
    it { should contain_anchor('database::end') }
  end
end
