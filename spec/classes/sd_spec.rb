require 'spec_helper'
describe 'roles::sd' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      context 'with defaults for all parameters' do
        it { is_expected.to contain_class('roles::sd') }
        it { is_expected.to contain_class('roles::node') }
        it { is_expected.to contain_anchor('sd::begin') }
        it { is_expected.to contain_anchor('sd::end') }
      end
    end
  end
end
