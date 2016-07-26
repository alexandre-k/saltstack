django:
  pip.installed:
    -names:
      - django
      - bootstrap
  require:
    pkg: python3
    pkg: python-pip

/var/www/:
  file.directory:
    - user: www-data
    - group: www-data

myblog:
  git.latest:
    - user: www-data
    - name: git@github.com:me/myblog.git
    - rev: master
    - target: /var/www/myblog

nginx_myblog:
  file.managed:
    - name: /etc/nginx/sites-enabled/myblog.conf
    - source: salt://blog/myblog.conf
    - template: jinja
