require 'spec_helper'
describe 'roles::puppetmaster' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::puppetmaster') }
    it { is_expected.to contain_class('roles::node') }
    it { is_expected.to contain_anchor('puppetmaster::begin') }
    it { is_expected.to contain_anchor('puppetmaster::end') }
  end
end
