opensmtpd:
  pkg.installed:
    - pkgs:
      - opensmtpd-extras-python
  service.running:
    - watch:
      - file: /srv/salt/mail/files/smtpd.conf
    - require:
      - pkg: opensmtpd
