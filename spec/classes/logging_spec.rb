require 'spec_helper'
describe 'roles::logging' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::logging') }
    it { should contain_anchor('logging::begin') }
    it { should contain_anchor('logging::end') }
  end
end
