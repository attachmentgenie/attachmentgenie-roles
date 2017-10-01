require 'spec_helper'
describe 'roles::alerting' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::alerting') }
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('alerting::begin') }
    it { is_expected.to contain_anchor('alerting::end') }
  end
end
