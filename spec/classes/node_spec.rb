require 'spec_helper'
describe 'roles::node' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::node') }
    it { should contain_anchor('node::begin') }
    it { should contain_anchor('node::end') }
  end
end
