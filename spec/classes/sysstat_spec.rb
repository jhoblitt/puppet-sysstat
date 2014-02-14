require 'spec_helper'

describe 'sysstat', :type => :class do

  describe 'for osfamily RedHat' do
    let :facts do
      {
        :osfamily => 'RedHat',
      }
    end

    it { should contain_class('sysstat') }
    it { should contain_class('sysstat::params') }
    it { should contain_class('sysstat::install') }
    it { should contain_class('sysstat::service') }
  end

end
