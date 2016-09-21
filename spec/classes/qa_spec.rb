require 'spec_helper'
describe 'roles::qa' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::qa') }
  end
end
