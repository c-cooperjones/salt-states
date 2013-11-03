{% if grains['os_family']=='Debian' %}
preseed-mysql-password:
  cmd.run:
    - name: debconf-set-selections <<< 'mysql-server mysql-server/root_password password' && debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password' && debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password' && debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password'
    #- unless: debconf-get-selections | grep mysql-server-5.5
{% endif %}