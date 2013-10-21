/etc/named.conf:
  file.managed:
    - source: salt://bind/configs/named.conf.jinja
    - user: root
    - group: root
    - mode: 644
    - template: jinja


{% for zone in pillar['zones'] %}
/var/named/{{pillar['zones'][zone]['file']}}.fwd:  
  file.managed:
   - source: salt://bind/configs/fwd.jinja
   - user: root
   - group: root
   - mode: 644
   - template: jinja
   - context:
     zone: {{zone}}
{% endfor %}


{% for zone in pillar['zones'] %}
/var/named/{{pillar['zones'][zone]['file']}}.rev:  
  file.managed:
   - source: salt://bind/configs/rev.jinja
   - user: root
   - group: root
   - mode: 644
   - template: jinja
   - context:
     zone: {{zone}}
{% endfor %}
