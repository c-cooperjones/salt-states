emacs:
  pkg:
    - installed
    {% if grains['os_family']=='Debian' %}
    - require:
      - cmd: set-ubuntu-locale
      - file: createLocaleFile
    {% endif %}