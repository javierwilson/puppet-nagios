# manifests/target.pp

#class nagios::target( $template = 'linux-server', $ip = $fqdn, $contacts = "admins" ) {
class nagios::target( $template = 'linux-server', $ip = $fqdn, $contacts = "" ) {

    @@nagios_host { "${fqdn}":
        address => $ip,
        alias => $hostname,
        use => $template,
        contacts => $contacts,
    }

    if ($nagios_parents != '') {
        Nagios_host["${fqdn}"] { parents => $nagios_parents }
    }

}
