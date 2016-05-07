require 'spec_helper'
describe 'roles::proxy' do
  let :facts do
  {
    :osfamily       => 'RedHat',
    :ipaddress      => '127.0.0.1',
    :ipaddress_eth1 => '127.0.0.1',
  }
  end
  context 'with defaults for all parameters' do
    it { should contain_class('roles::proxy') }
  end
end
