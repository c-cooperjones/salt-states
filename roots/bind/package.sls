bind:
  pkg:
    - installed

bind-utils:
  pkg:
    - installed
    - require:
      - pkg: bind
