base:
  'os:(CentOS|RedHat)':
    - match: grain_pcre
    - epel
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
    - curl
    - rails
    - nginx.firewall
    - mysql
    - npm
    - iptables.setdrop
