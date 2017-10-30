require 'spec_helper'
describe 'roles::dashboard' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::dashboard') }
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('dashboard::begin') }
    it { is_expected.to contain_anchor('dashboard::end') }
  end
end
