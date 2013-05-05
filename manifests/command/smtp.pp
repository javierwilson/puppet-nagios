class nagios::command::smtp {
  nagios_command{
    'check_smtp':
      command_line => '$USER1$/check_smtp -H $HOSTADDRESS$';
    'check_smtp_tls':
      command_line => '$USER1$/check_smtp -H $HOSTADDRESS$ -S';
    'check_smtp_cert':
      command_line => '$USER1$/check_smtp -H $HOSTADDRESS$ -S -D $ARG1$';
    'check_smtps':
      command_line => '$USER1$/check_ssmtp -H $HOSTADDRESS$';
    'check_ssmtp':
      command_line => '$USER1$/check_ssmtp -H $HOSTADDRESS$';
    'check_ssmtp_cert':
      command_line => '$USER1$/check_ssmtp -H $HOSTADDRESS$ -S -D $ARG1$';
  }
}
