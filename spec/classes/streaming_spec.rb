require 'spec_helper'
describe 'roles::streaming' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::streaming') }
    it { should contain_anchor('streaming::begin') }
    it { should contain_anchor('streaming::end') }
  end
end
