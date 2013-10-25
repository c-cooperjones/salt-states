rsyslog-service:
  service.running:
    - name: rsyslog
    - enable: True
    - reload: True
    - watch:
      - pkg: rsyslog
      - file: syslog-config
    - require:
      - pkg: rsyslog