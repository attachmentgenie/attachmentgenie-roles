require 'spec_helper'
describe 'roles::database' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      context 'with defaults for all parameters' do
        it { is_expected.to contain_class('roles::database') }
        it { is_expected.to contain_class('roles::node') }
        it { is_expected.to contain_anchor('database::begin') }
        it { is_expected.to contain_anchor('database::end') }
      end
    end
  end
end
