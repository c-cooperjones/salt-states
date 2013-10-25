input-drop:
  iptables.set_policy:
    - table: filter
    - chain: INPUT
    - policy: DROP

forward-drop:
  iptables.set_policy:
    - table: filter
    - chain: FORWARD
    - policy: DROP
    
output-drop:
  iptables.set_policy:
    - table: filter
    - chain: OUTPUT
    - policy: DROP