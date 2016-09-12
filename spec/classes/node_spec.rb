require 'spec_helper'
describe 'roles::node' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::node') }
  end
end
