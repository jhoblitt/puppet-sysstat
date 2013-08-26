require 'spec_helper'

describe 'sysstat', :type => 'class' do

  describe 'for osfamily RedHat' do
    it { should contain_class('sysstat') }
  end

end
