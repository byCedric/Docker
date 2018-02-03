#!/bin/sh
set -e

path_source='/etc/nginx/conf.d/sites-template'
path_target='/etc/nginx/conf.d/sites-available'

for file in $path_source/*.conf
do
	envsubst "$TEMPLATE_VARIABLES" < $file > $path_target/$(basename $file);
done

exec nginx -g "daemon off;"
