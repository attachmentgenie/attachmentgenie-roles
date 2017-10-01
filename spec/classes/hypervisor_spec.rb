require 'spec_helper'
describe 'roles::hypervisor' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::hypervisor') }
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('hypervisor::begin') }
    it { is_expected.to contain_anchor('hypervisor::end') }
  end
end
