require 'spec_helper'
describe 'roles::website' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::website') }
    it { is_expected.to contain_anchor('website::begin') }
    it { is_expected.to contain_anchor('website::end') }
  end
end
