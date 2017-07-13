# Use PHP as primary language
FROM php:7

# Suppress the do-not-run-as-root warning from composer
ENV COMPOSER_ALLOW_SUPERUSER 1

# Add Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Add Node 8 LTS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash --

# Update, upgrade and install some dependencies
RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		git \
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
