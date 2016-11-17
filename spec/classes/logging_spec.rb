require 'spec_helper'
describe 'roles::logging' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::logging') }
  end
end
