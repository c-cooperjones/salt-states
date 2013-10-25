syslog-config:
  file.managed:
    - name: /etc/rsyslog.conf
    - source: salt://rsyslog/configs/rsyslog-server.jinja
    - user: root
    - user: root
    - mode: 644
    - template: jinja
    
include:
  - .firewall