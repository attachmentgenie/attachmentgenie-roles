require 'spec_helper'
describe 'roles::logging' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::logging') }
    it { is_expected.to contain_anchor('logging::begin') }
    it { is_expected.to contain_anchor('logging::end') }
  end
end
