require 'spec_helper'
describe 'roles::all' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::all') }
  end
end
