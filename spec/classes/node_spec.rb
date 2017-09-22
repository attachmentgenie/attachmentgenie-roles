require 'spec_helper'
describe 'roles::node' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('node::begin') }
    it { is_expected.to contain_anchor('node::end') }
  end
end
