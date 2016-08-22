require 'spec_helper'
describe 'roles::bootstrap' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::bootstrap') }
  end
end
