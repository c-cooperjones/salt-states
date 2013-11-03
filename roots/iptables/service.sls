iptables-service:
  service:
    - name: {{pillar['services']['iptables']}}
    - running
    - watch:
      - pkg: {{pillar['packages']['iptables']}}
    - require:
      - pkg: {{pillar['packages']['iptables']}}