{% if grains['os_family']=='RedHat' %}
mariadb-repo:
  pkgrepo.managed:
    - humanname: MariaDB
    - baseurl: http://yum.mariadb.org/10.0/centos6-amd64
    - gpgcheck: 1
    - gpgkey: https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
{% elif grains['os_family']=='Debian' %}
mariadb-repo:
  pkgrepo.managed:
    - human_name: MariaDB
    - name: deb http://ftp.osuosl.org/pub/mariadb/mariadb-5.5.32/repo/ubuntu raring main
    - dist: raring
    - file: /etc/apt/sources.list.d/mariadb.list
    - keyid: CBCB082A1BB943DB
    - keyserver: keyserver.ubuntu.com

/etc/apt/preferences.d/mariadb:
    file.managed:
      - source: salt://mariadb/configs/mariadb-pin
      - mode: 644
{% endif %}