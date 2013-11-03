{{pillar['services']['mysql']}}:
  service:
    - running
    - enable: True
    - require:
      - pkg: {{pillar['packages']['mysql-server']}}
