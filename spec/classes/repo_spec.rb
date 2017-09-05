require 'spec_helper'
describe 'roles::repo' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::repo') }
    it { should contain_anchor('repo::begin') }
    it { should contain_anchor('repo::end') }
  end
end
