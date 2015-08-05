class nagios::command::dns {
  nagios_command{
    'check_dns':
      command_line => '$USER1$/check_dns -H $ARG1$ -s $HOSTADDRESS$';
  }
}
