require 'spec_helper'
describe 'roles::streaming' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::streaming') }
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('streaming::begin') }
    it { is_expected.to contain_anchor('streaming::end') }
  end
end
