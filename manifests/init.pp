#
# nagios module
# nagios.pp - everything nagios related
#
# Copyright (C) 2007 David Schmitt <david@schmitt.edv-bus.at>
# Copyright 2008, admin(at)immerda.ch
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute
# it and/or modify it under the terms of the GNU
# General Public License version 3 as published by
# the Free Software Foundation.
#

# manage nagios
class nagios(
  $httpd = 'apache',
  $allow_external_cmd = false,
  $manage_shorewall = false,
  $manage_munin = false
) {
  case $nagios::httpd {
    'absent': { }
    'lighttpd': { include ::lighttpd }
    'apache': { include ::apache }
    default: { include ::apache }
  }
  case $::operatingsystem {
    'fedora', 'centos': {
      $cfgdir = '/etc/nagios'
      include nagios::centos
    }
    'debian': {
      $cfgdir = '/etc/nagios3'
      include nagios::debian
    }
    default: { fail("No such operatingsystem: ${::operatingsystem} yet defined") }
  }
  if $manage_munin {
    include nagios::munin
  }
}
