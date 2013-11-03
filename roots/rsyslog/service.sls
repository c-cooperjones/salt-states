rsyslog-service:
  service.running:
    - name: rsyslog
    - enable: True
    - watch:
      - pkg: rsyslog
      - file: syslog-config
    - require:
      - pkg: rsyslog