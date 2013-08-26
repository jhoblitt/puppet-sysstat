class sysstat::service {
  include sysstat::install

  service{ 'sysstat':
#    ensure      => running,
    hasstatus   => false,
    hasrestart  => true,
    enable      => true,
    require     => Class['sysstat::install'],
    subscribe   => Class['sysstat::install'],
  }
}
