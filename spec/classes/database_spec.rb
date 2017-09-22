require 'spec_helper'
describe 'roles::database' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::database') }
    it { is_expected.to contain_anchor('database::begin') }
    it { is_expected.to contain_anchor('database::end') }
  end
end
