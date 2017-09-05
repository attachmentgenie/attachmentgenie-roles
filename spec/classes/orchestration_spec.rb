require 'spec_helper'
describe 'roles::orchestration' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::orchestration') }
    it { should contain_anchor('orchestration::begin') }
    it { should contain_anchor('orchestration::end') }
  end
end
