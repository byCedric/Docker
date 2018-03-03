FROM bycedric/serve

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache \
	php7 \
	php7-ctype \
	php7-fpm \
	php7-json \
	php7-mbstring \
	php7-openssl \
	php7-pdo \
	php7-pdo-mysql \
	php7-pdo-sqlite \
	php7-session \
	php7-tokenizer \
	php7-xml \
	supervisor

COPY ./supervisord.conf /etc/supervisord.conf
COPY ./nginx-laravel.conf /etc/nginx/conf.d/sites-template/laravel.conf

ENV SERVER_FILE 'index.php'

CMD ["sh", "-c", "ngxsite template laravel && ngxsite enable laravel && supervisord -n -c /etc/supervisord.conf"]
