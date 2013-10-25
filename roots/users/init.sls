{% for user in pillar.get('users') %}
{{user}}-user:
  user.present:
    - name: {{user}}
    - groups: {{pillar['users'][user]['groups']}}
    - uid: {{pillar['users'][user]['uid']}}
    - require:
      - pkg: openssh-server

{{user}}-sshkey:
  ssh_auth:
    - present
    - user: {{user}}
    - enc: ssh-rsa
    - names:
      - {{pillar['users'][user]['ssh_key']}}
    - require:
      - user: {{user}}
      - pkg: openssh-server
    - comment: {{user}}

{% endfor %}
