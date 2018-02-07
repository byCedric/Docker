FROM alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>' \
	description 'A basic NGINX server, configurable using environment variables.'

RUN apk add --no-cache --virtual .nginx \
		gettext \
		nginx \
	&& adduser -D -g 'www' www \
	&& mkdir -p \
		/etc/nginx/conf.d/sites-available \
		/etc/nginx/conf.d/sites-enabled \
		/etc/nginx/conf.d/sites-template \
		/var/www/http \
	&& chown -R www:www \
		/var/lib/nginx \
		/var/www \
	&& mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/sites-available/ \
	&& mv /etc/nginx/nginx.conf /etc/nginx/nginx.original.conf \
	&& ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

COPY index.html /var/www/http/index.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx-http.conf /etc/nginx/conf.d/sites-template/http.conf
COPY nginx-site.sh /usr/sbin/ngxsite

RUN chmod +x /usr/sbin/ngxsite

ENV SERVER_FILE='index.html' \
	SERVER_NAME='_' \
	SERVER_ROOT='/var/www/http' \
	TEMPLATE_VARIABLES='$SERVER_FILE $SERVER_NAME $SERVER_ROOT'

CMD ["sh", "-c", "ngxsite template http && ngxsite enable http && nginx -g 'daemon off;'"]
