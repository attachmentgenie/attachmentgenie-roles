require 'spec_helper'
describe 'roles::sd' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::sd') }
    it { is_expected.to contain_anchor('sd::begin') }
    it { is_expected.to contain_anchor('sd::end') }
  end
end
