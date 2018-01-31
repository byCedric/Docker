FROM alpine

# install both PHP and Nginx
RUN apk add --no-cache \
	nginx \
	nginx-mod-http-lua \
	php7 \
	php7-fpm \
	php7-mbstring \
	php7-openssl \
	php7-pdo \
	php7-pdo_mysql \
	php7-tokenizer \
	php7-xml \
	supervisor

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./supervisord.conf /etc/supervisord.conf

EXPOSE 80

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
