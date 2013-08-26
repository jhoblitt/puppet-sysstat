# == Class: sysstat::install
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
  package {'sysstat':
    ensure => latest,
  }
}
