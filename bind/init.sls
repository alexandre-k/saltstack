bind:
  pkg.installed: []
  service.running:
    - watch:
      - file: /var/named/etc/named.conf
    - require:
      - pkg: isc-bind

/var/named/etc/named.conf:
  file.managed:
    - name: /var/named/etc/named.conf
    - source: salt://bind/named.conf

