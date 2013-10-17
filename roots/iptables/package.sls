iptables:
  pkg:
   - installed
  service:
    - running
    - watch:
      - pkg: iptables
    - require:
      - pkg: iptables
