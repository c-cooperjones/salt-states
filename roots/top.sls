base:
  '*':
    - iptables.clearrules
    - vim
    - git
    - emacs
    - telnet
    - iptables
    - users
    - ssh
    - rsyslog
    - network
    
  'os:(CentOS|RedHat)':
    - match: grain_pcre
    - epel
  '^(www[0-9]*).(10Goronwy).*$':
    - match: pcre
    - nginx
    - rsyslog.client-config
    - iptables.setdrop
  '^(dns[0-9]*).(10Goronwy).*$':
    - match: pcre
    - bind
    - rsyslog.client-config
    - iptables.setdrop
  '^(sql[0-9]*).(10Goronwy).*$':
    - match: pcre
    - mariadb
    - rsyslog.client-config
  '^(queue[0-9]*).(10Goronwy).*$':
    - match: pcre
    - rabbitmq
    - rsyslog.client-config
  '^(nosql[0-9]*).(10Goronwy).*$':
    - match: pcre
    - mongodb
    - rsyslog.client-config
  '^(logger[0-9]*).(10Goronwy).*$':
    - match: pcre
    - rsyslog.server-config
