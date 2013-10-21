named:
  service:
    - running
    - enable: True
    - require:
      - pkg: bind
    - watch:
      - file: /etc/named.conf
      {% for zone in pillar['zones'] %}
      - file: /var/named/{{pillar['zones'][zone]['file']}}.fwd
      - file: /var/named/{{pillar['zones'][zone]['file']}}.rev
      {% endfor %}
      - pkg: bind
