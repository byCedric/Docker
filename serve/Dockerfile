FROM nginx:alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN rm /etc/nginx/conf.d/default.conf \
	&& mkdir -p \
		/etc/nginx/conf.d/sites-available \
		/etc/nginx/conf.d/sites-enabled \
		/etc/nginx/conf.d/sites-template

COPY nginx-helper.sh /usr/sbin/ngxsite
COPY nginx-http.conf /etc/nginx/conf.d/sites-template/http.conf
COPY nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /usr/sbin/ngxsite

ENV SERVER_FILE 'index.html'
ENV SERVER_NAME '_'
ENV SERVER_ROOT '/usr/share/nginx/html'

ENV TEMPLATE_VARIABLES '$SERVER_FILE $SERVER_NAME $SERVER_ROOT'

CMD ["sh", "-c", "ngxsite template -a && ngxsite enable http && nginx -g 'daemon off;'"]
