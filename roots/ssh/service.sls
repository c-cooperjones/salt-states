{{pillar['services']['sshd']}}:
  service:
    - running
    - require:
      - pkg: {{pillar['packages']['sshd']}}
