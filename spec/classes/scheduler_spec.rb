require 'spec_helper'
describe 'roles::scheduler' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      context 'with defaults for all parameters' do
        it { is_expected.to contain_class('roles::scheduler') }
        it { is_expected.to contain_class('roles::node') }
        it { is_expected.to contain_anchor('scheduler::begin') }
        it { is_expected.to contain_anchor('scheduler::end') }
      end
    end
  end
end
