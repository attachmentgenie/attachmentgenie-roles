require 'spec_helper'
describe 'roles::puppetmaster' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::puppetmaster') }
    it { should contain_anchor('puppetmaster::begin') }
    it { should contain_anchor('puppetmaster::end') }
  end
end
