require 'spec_helper'

describe 'sysstat', :type => :class do

  describe 'for osfamily RedHat' do
    let :facts do
      {
        :osfamily => 'RedHat',
      }
    end

    it { should include_class('sysstat') }
    it { should include_class('sysstat::params') }
    it { should include_class('sysstat::install') }
    it { should include_class('sysstat::service') }
  end

end
