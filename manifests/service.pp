# == Class: sysstat::service
#
# This class should be considered private.
#
# === Authors
#
# Joshua Hoblitt <jhoblitt@cpan.org>
#
# === Copyright
#
# Copyright (C) 2013 Joshua Hoblitt
#
class sysstat::service {
  service{ 'sysstat':
    hasstatus   => false,
    hasrestart  => true,
    enable      => true,
  }

  if $::osfamily == 'Debian' {
    augeas { '/etc/default/sysstat':
      context => '/files/etc/default/sysstat/',
      changes => 'set ENABLED true',
    }
  }
}
