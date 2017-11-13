# Use the multi-stage feature to import Composer securely
FROM composer
# Use PHP as primary language
FROM php

# Suppress the do-not-run-as-root warning from composer
ENV COMPOSER_ALLOW_SUPERUSER 1

# Add Composer
COPY --from=composer /usr/bin/composer /usr/bin/composer
# Add Node 8 LTS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash --

# Update, upgrade and install some dependencies
RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		git \
		libpng-dev \
		libsqlite3-dev \
		nodejs \
		unzip \
	&& apt-get autoremove -y

# Install additional required PHP extensions
RUN docker-php-ext-install \
	pdo_sqlite

# Install and enable xdebug
RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

# Show the versions of PHP, Node, Composer and NPM
CMD \
	echo "Node $(node -v)"; \
	echo "NPM $(npm -v)"; \
	php -v; \
	composer --version;
