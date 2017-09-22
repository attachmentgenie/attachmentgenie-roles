require 'spec_helper'
describe 'roles::qa' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::qa') }
    it { is_expected.to contain_anchor('qa::begin') }
    it { is_expected.to contain_anchor('qa::end') }
  end
end
