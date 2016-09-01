require 'spec_helper'
describe 'roles::puppetmaster' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::puppetmaster') }
  end
end
