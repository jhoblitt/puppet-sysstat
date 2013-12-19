require 'spec_helper'

describe 'sysstat::params', :type => :class do
  describe 'for osfamily RedHat' do
    let :facts do
      {
        :osfamily => 'RedHat',
      }
    end

    it { should include_class('sysstat::params') }
  end

  describe 'for osfamily Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should include_class('sysstat::params') }
  end
  
  describe 'unsupported osfamily' do
    let :facts do 
      {
        :osfamily        => 'Solaris',
        :operatingsystem => 'Solaris',
      }
    end
  
    it 'should fail' do
      expect { should include_class('sysstat::params') }.
        to raise_error(Puppet::Error, /not supported on Solaris/)
    end
  end

end
