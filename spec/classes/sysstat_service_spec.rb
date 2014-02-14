require 'spec_helper'

describe 'sysstat::service', :type => :class do
  context 'on RedHat' do
    it do
      should contain_service('sysstat').with({
        :hasstatus  => 'false',
        :hasrestart => 'true',
        :enable     => 'true',
      })
    end

    it { should_not contain_augeas('/etc/default/sysstat') }
  end # on RedHat

  context 'on Debian' do
    let(:facts) {{ :osfamily => 'Debian' }}

    it do
      should contain_service('sysstat').with({
        :hasstatus  => 'false',
        :hasrestart => 'true',
        :enable     => 'true',
      })
    end

    it do
      should contain_augeas('/etc/default/sysstat').with({
        :context => '/files/etc/default/sysstat/',
        :changes => 'set ENABLED true',
      })
    end
  end # on Debian
end

