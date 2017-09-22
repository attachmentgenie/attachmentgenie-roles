require 'spec_helper'
describe 'roles::metrics' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::metrics') }
    it { is_expected.to contain_anchor('metrics::begin') }
    it { is_expected.to contain_anchor('metrics::end') }
  end
end
