FROM bycedric/serve

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache \
	php7 \
	php7-ctype \
	php7-curl \
	php7-dom \
	php7-fileinfo \
	php7-fpm \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-openssl \
	php7-pdo \
	php7-pdo_mysql \
	php7-pdo_sqlite \
	php7-session \
	php7-tokenizer \
	php7-xml \
	supervisor

COPY ./nginx-laravel.conf /etc/nginx/conf.d/sites-template/laravel.conf
COPY ./php-fpm.conf /etc/php7/php-fpm.d/www.conf
COPY ./supervisord.conf /etc/supervisord.conf

ENV SERVER_FILE 'index.php'

CMD ["sh", "-c", "ngxsite template laravel && ngxsite enable laravel && supervisord -n -c /etc/supervisord.conf"]
