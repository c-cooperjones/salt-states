base:
  'os:CentOS':
    - match: grain
    - epel
  '*':
    - vim
    - git
  'nodename:webserver*':
    - match: grain 
    - nginx