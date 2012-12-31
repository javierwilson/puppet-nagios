class nagios::defaults::vars {
  case $nagios_cfgdir {
    '': { $int_nagios_cfgdir = $::operatingsystem ? {
            Fedora => '/etc/nagios/',
            centos => '/etc/nagios/',
            default => '/etc/nagios3'
          }
    }
    default: { $int_nagios_cfgdir = $nagios_cfgdir }
  }
}
