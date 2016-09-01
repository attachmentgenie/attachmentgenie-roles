require 'spec_helper'
describe 'roles::prometheus' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::prometheus') }
  end
end
