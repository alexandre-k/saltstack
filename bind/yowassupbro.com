$ORIGIN yowassupbro.com.
$TTL 60
@	SOA	ns.yowassupbro.com.	hostmaster.yowassupbro.com. (
		20160218
		21600
		3600
		604800
		86400)
	IN	NS	ns.yowassupbro.com.
mail	IN	A	45.32.37.189
mail	IN	AAAA	2001:19f0:7000:a5e9:5400:ff:fe1f:cea
ns	IN	A	45.32.44.205
ns	IN	AAAA	2001:19f0:7000:a5e9:5400:ff:fe1f:ceb
@    IN  A   45.32.44.205
@ IN  AAAA 2001:19f0:7000:a5e9:5400:ff:fe1f:ceb
jupiter IN	A	45.32.44.205
jupiter	IN	AAAA	2001:19f0:7000:a5e9:5400:ff:fe1f:ceb
imap	IN	A	45.32.44.205
imap	IN	AAAA	2001:19f0:7000:a5e9:5400:ff:fe1f:ceb
;;					Priority Weight Port	Target
_sip._udp		IN	SRV	0	1	5060	jupiter.yowassupbro.com.
_sip._tcp		IN	SRV	0	1	5060	jupiter.yowassupbro.com.
_kerberos._udp		IN	SRV	01 	00 	88 jupiter.yowassupbro.com.
_kerberos._tcp		IN	SRV	01 	00 	88 jupiter.yowassupbro.com.
_kpasswd._udp		IN	SRV	01 	00 	464 jupiter.yowassupbro.com.
_kerberos-adm._tcp	IN	SRV	01 	00 	749 jupiter.yowassupbro.com.
_kerberos		IN	TXT	YOWASSUPBRO.COM
mail	IN	TXT	"v=spf1 a mx -all"
mail	IN	MX	10 yowassupbro.com.

032016._domainkey.mail       IN      TXT     ( "v=DKIM1; k=rsa; "
          "p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDYehs6yHD7PWB5lfoAk29iimMH0AbZljmass0TqRY5nwwGADlLgQLj128hjtzPgmCnDO8eV2PAanFCZ5vtp3/khA+jxngLRe1MLLqy75qZiV+QIpTIY8ulWgREB1dKIvhZDgpa1cJQe3q50o+rB0pgy8pSgFBp3pPs93tFBDX0xwIDAQAB" ) 

mail	IN	TXT	"google-site-verification=r2d58j-qp28HjIJogij5WBhCAULCgovvFoJHrDBAz0w"

mail.yowassupbro.com._report._dmarc.mail.yowassupbro.com	IN	TXT	( "v=DMARC1; p=quarantine; rua=mailto:postmaster@mail.yowassupbro.com; ruf=mailto:postmaster@mail.yowassupbro.com; adkim=r; aspf=r; pct=100; ri=86400; sp=quarantine" )
$INCLUDE /usr/local/etc/namedb/Kyowassupbro.com.+005+46206.key
$INCLUDE /usr/local/etc/namedb/Kyowassupbro.com.+005+65179.key
