class nagios::command::nrpe {

  nagios_command {
    'check_nrpe':
       command_line => '$USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$'
  }

  # this command runs a program $ARG1$ with arguments $ARG2$
  nagios_command {
    'check_nrpe_2arg':
       command_line => '$USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$ -a $ARG2$'
  }

  # this command runs a program $ARG1$ with no arguments
  nagios_command {
    'check_nrpe_1arg':
       command_line => '$USER1$/check_nrpe -H $HOSTADDRESS$ -c $ARG1$'
  }
}
