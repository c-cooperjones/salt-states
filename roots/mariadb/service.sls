mysql:
  service:
    - running
    - enable: True
    - require:
      - pkg: MariaDB
