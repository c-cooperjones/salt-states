{{pillar['packages']['mysql-server']}}:
  pkg:
    - installed
    {% if grains['os_family']=='Debian' %}
    - require:
      - pkg: debconf
      - cmd: preseed-mysql-password
      - file: /etc/mysql/my.cnf
    {% endif %}