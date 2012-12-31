# manifests/target.pp

class nagios::target( $template = 'linux-server', $ip = $fqdn ) {

    @@nagios_host { "${fqdn}":
        address => $ip,
        alias => $hostname,
        use => $template,
    }

    if ($nagios_parents != '') {
        Nagios_host["${fqdn}"] { parents => $nagios_parents }
    }

}
