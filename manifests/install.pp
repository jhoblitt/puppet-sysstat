class sysstat::install {
  package {'sysstat':
    ensure => latest,
  }
}
