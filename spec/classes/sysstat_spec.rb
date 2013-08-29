require 'spec_helper'

describe 'sysstat', :type => :class do
  it { should contain_class('sysstat') }
  it { should contain_class('sysstat::install') }
  it { should contain_package('sysstat').with_ensure('present') }
  it { should contain_class('sysstat::service') }
end
