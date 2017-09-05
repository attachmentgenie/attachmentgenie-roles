require 'spec_helper'
describe 'roles::metrics' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::metrics') }
    it { should contain_anchor('metrics::begin') }
    it { should contain_anchor('metrics::end') }
  end
end
