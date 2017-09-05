require 'spec_helper'
describe 'roles::sd' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::sd') }
    it { should contain_anchor('sd::begin') }
    it { should contain_anchor('sd::end') }
  end
end
