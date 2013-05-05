class nagios::command::imap_pop3 {
  nagios_command{
    'check_imap':
      command_line => '$USER1$/check_imap -H $HOSTADDRESS$';
    'check_imap_ssl':
      command_line => '$USER1$/check_simap -H $HOSTADDRESS$';
    'check_imaps':
      command_line => '$USER1$/check_simap -H $HOSTADDRESS$';
    'check_pop':
      command_line => '$USER1$/check_pop -H $HOSTADDRESS$';
    'check_pops':
      command_line => '$USER1$/check_pop -H $HOSTADDRESS$';
    'check_pop3':
      command_line => '$USER1$/check_pop -H $HOSTADDRESS$';
    'check_pop3_ssl':
      command_line => '$USER1$/check_spop -H $HOSTADDRESS$';
    'check_pop3s':
      command_line => '$USER1$/check_spop -H $HOSTADDRESS$';
    'check_managesieve':
      command_line => '$USER1$/check_tcp -H $HOSTADDRESS$ -p 4190';
  }
}
