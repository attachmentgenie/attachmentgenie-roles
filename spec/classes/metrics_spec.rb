require 'spec_helper'
describe 'roles::metrics' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::metrics') }
  end
end
