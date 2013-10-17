base:
  '*':
    - vim
    - git
    - emacs
    - telnet
    - iptables
  'os:(CentOS|RedHat)':
    - match: grain_pcre
    - epel
  '^(www[0-9]*).(dev).*$':
    - match: pcre
    - nginx
    - mongodb
    - rabbitmq
    - mariadb
