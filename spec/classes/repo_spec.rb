require 'spec_helper'
describe 'roles::repo' do
  context 'with defaults for all parameters' do
    it { is_expected.to contain_class('roles::repo') }
    it { is_expected.to contain_anchor('repo::begin') }
    it { is_expected.to contain_anchor('repo::end') }
  end
end
