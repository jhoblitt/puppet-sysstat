# == Class: sysstat::install
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
class sysstat::install {
  package { $sysstat::params::sysstat_package:
    ensure => present,
  }
}
