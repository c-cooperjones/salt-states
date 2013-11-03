packages:
{% if grains['os_family']=='Debian' %}
  nginx: nginx
  apache: apache2
  sshd: openssh-server
  ssh: openssh-client
  iptables: iptables
  vim: vim
  rsyslog: rsyslog
  mariadb-server: mariadb-server
  mariadb-client: mariadb-client
  mysql-server: mysql-server
  mysql-client: mysql-client
  curl: curl
{% elif grains['os_family']=='RedHat' %}
  nginx: nginx
  apache: httpd
  sshd: openssh-server
  ssh: openssh-clients
  iptables: iptables
  vim: vim-enhanced
  rsyslog: rsyslog
  mariadb-server: mariadb-server
  mysql-server: mysql-server
  mysql-client: mysql-client
  curl: curl
{% endif %}