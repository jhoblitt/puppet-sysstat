require 'spec_helper'

describe 'sysstat::install', :type => :class do
  let :pre_condition do
    'include sysstat::params'
  end

  describe 'for osfamily RedHat' do
    let :facts do 
      {
        :osfamily => 'RedHat',
      }
    end

    it { should include_class('sysstat::install') }
    it { should contain_package('sysstat').with_ensure('present') }
  end

end
