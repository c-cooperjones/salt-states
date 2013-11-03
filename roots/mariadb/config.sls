/etc/mysql/debian.cnf:
  file:
    - managed
    - source: salt://mariadb/configs/debian.cnf
    - mode: 600
    - makedirs: True
    
/etc/mysql/my.cnf:
  file:
    - managed
    - source: salt://mariadb/configs/my.cnf.jinja2
    - mode: 644
    - makedirs: True