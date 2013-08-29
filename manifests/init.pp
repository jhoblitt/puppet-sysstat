# == Class: sysstat
#
# === Examples
#
# include sysstat
#
# === Authors
#
# Joshua Hoblitt <jhoblitt@cpan.org>
#
# === Copyright
#
# Copyright (C) 2013 Joshua Hoblitt
#
class sysstat inherits sysstat::params {
  class { 'sysstat::install': } ->
  class { 'sysstat::service': } ->
  Class['Sysstat']
}
