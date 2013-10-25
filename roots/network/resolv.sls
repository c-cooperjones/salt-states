resolv.conf:
  file.managed:
    - name: /etc/resolv.conf
    - source: salt://network/configs/resolv.jinja
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    