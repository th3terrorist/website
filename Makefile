.PHONY: host
host:
	@python3 -m http.server 9999 --bind 127.0.0.1 --directory web
.PHONY: host-https
host-https:
	@python3 -m http.server 443 --bind 127.0.0.1 --directory web
.PHONY: cert
cert: 
	@openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365
