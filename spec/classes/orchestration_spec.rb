require 'spec_helper'
describe 'roles::orchestration' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::orchestration') }
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('orchestration::begin') }
    it { is_expected.to contain_anchor('orchestration::end') }
  end
end
