nginx-service:
  service:
    - name: {{pillar['services']['nginx']}}
    - running
    - enable: True