require 'spec_helper'
describe 'roles::orchestration' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::orchestration') }
  end
end
