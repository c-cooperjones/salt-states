{{pillar['packages']['mariadb-server']}}:
  pkg:
    - installed
    - require:
      - pkgrepo: mariadb-repo
      - file: /etc/mysql/debian.cnf
      - file: /etc/mysql/my.cnf
      - file: /etc/apt/preferences.d/mariadb
  service:
    - name: mysql
    - running
    - enable: False
    - watch:
      - file: /etc/mysql/my.cnf
      - file: /etc/mysql/debian.cnf
    - require:
      - pkg: {{pillar['packages']['mariadb-server']}}