require 'spec_helper'
describe 'roles::streaming' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::streaming') }
  end
end
