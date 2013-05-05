class nagios::command::nrpe {
  nagios_command{
    'check_nrpe':
      command_line => '$USER1$/check_nrpe -H $HOSTADDRESS$ -t 90 -c $ARG1$';
  }
}
