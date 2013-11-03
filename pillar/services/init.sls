services:
{% if grains['os_family']=='Debian' %}
  nginx: nginx
  apache: apache2
  sshd: ssh
  iptables: ufw
  rsyslog: rsyslog
  mysql: mysql
{% elif grains['os_family']=='RedHat' %}
  nginx: nginx
  apache: httpd
  sshd: sshd
  iptables: iptables
  rsyslog: rsyslog
  mysql: mysqld
{% endif %}