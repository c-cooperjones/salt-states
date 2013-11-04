base:
  '*':
    - vim
    - git
    - iptables.clearrules
    - iptables
    - users
    - ssh
    - rsyslog
    - emacs
    - telnet
    #- network
  'os_family:Debian':
    - match: grain_pcre
    - debconf
    - set_locale
  'os:(CentOS|RedHat)':
    - match: grain_pcre
    - epel
  '^(www[0-9]*).(10Goronwy).*$':
    - match: pcre
    - curl
    - rails
    - nginx.firewall
#    - nginx
    - mysql
    - mongodb
    - npm
    - rsyslog.client-config
#    - java
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
  '^(jenkins[0-9]*).(10Goronwy).*$':
    - match: pcre
    - nginx
    - jenkins
    - java
    - rsyslog.server-config
