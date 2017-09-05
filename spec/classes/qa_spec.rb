require 'spec_helper'
describe 'roles::qa' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::qa') }
    it { should contain_anchor('qa::begin') }
    it { should contain_anchor('qa::end') }
  end
end
