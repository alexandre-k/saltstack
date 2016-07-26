vim:
  pkg.installed:
    {% if grains['os'] == 'OpenBSD' %}
    - name: vim-7.4.900-no_x11-perl-python3-ruby
    {% else %}
    -name: vim
    {% end %}

~/.vimrc:
  file.managed:
    - source: salt://vimrc
    - mode: 644
    - user: root
    - group: root
