require 'spec_helper'
describe 'roles::alerting' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::alerting') }
  end
end
