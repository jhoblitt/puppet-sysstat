require 'spec_helper'

describe 'sysstat::service', :type => :class do

  it do
    should contain_service('sysstat').with({
      :hasstatus  => 'false',
      :hasrestart => 'true',
      :enable     => 'true',
    })
  end

end

