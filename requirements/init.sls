essential:
  pkg.installed:
    - pkgs:
      - bash
      - git
      - curl
      - apache-httpd
      - py3-pip

editor:
  pkg.installed:
    - name: vim
    - version: 7.4.900-no_x11

python:
  pkg.latest:
    - version:
      - 3
    - pkgs:
      - python
    - bin_env: '/usr/local/bin/python3'

python_modules:
  pip.installed:
    - name: django
    - upgrade: True
    - bin_env: '/usr/local/bin/pip3'
