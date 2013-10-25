{% if salt['iptables.get_policy']('filter','INPUT')!='DROP' %}

clear-rules:
  iptables.flush:
    - table: filter

{% endif %}

set-established-input:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: RELATED,ESTABLISHED
    
set-established-output:
  iptables.append:
    - table: filter
    - chain: OUTPUT
    - jump: ACCEPT
    - match: state
    - connstate: RELATED,ESTABLISHED
    
set-local:
  iptables.append:
    - table: filter
    - chain: INPUT
    - if: lo
    - jump: ACCEPT
