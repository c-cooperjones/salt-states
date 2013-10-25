sshd:
  service:
    - running
    - require:
      - pkg: openssh-server
