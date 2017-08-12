require 'spec_helper'
describe 'roles::sd' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::sd') }
  end
end
