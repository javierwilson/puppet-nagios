class nagios::command::nrpe_timeout {
  nagios_command {
    'check_nrpe_timeout':
       command_line => '$USER1$/check_nrpe -t $ARG1$ -H $HOSTADDRESS$ -c $ARG2$ -a $ARG3$'
  }

  nagios_command {
    'check_nrpe_1arg_timeout':
       command_line => '$USER1$/check_nrpe -t $ARG1$ -H $HOSTADDRESS$ -c $ARG2$'
  }
}
