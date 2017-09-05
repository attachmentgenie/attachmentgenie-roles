require 'spec_helper'
describe 'roles::hypervisor' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::hypervisor') }
    it { should contain_anchor('hypervisor::begin') }
    it { should contain_anchor('hypervisor::end') }
  end
end
