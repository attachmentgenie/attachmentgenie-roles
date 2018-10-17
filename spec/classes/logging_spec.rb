require 'spec_helper'
describe 'roles::logging' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      context 'with defaults for all parameters' do
        it { is_expected.to contain_class('roles::logging') }
        it { is_expected.to contain_class('roles::node') }
        it { is_expected.to contain_anchor('logging::begin') }
        it { is_expected.to contain_anchor('logging::end') }
      end
    end
  end
end
