require 'spec_helper'
describe 'roles::proxy' do
  let :facts do
  {
    :ipaddress              => '127.0.0.1',
    :ipaddress_eth1         => '127.0.0.1',
    :kernel                 => 'linux',
    :osfamily               => 'RedHat',
    :operatingsystem        => 'centos',
    :operatingsystemrelease => '7.2,',
    :os_maj_release         => '7',
    :puppetversion          => '3.8.7',
  }
  end
  context 'with defaults for all parameters' do
    it { should contain_class('roles::proxy') }
  end
end
