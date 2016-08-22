require 'spec_helper'
describe 'roles::kafka' do
  context 'with defaults for all parameters' do
    it { should contain_class('roles::kafka') }
  end
end
