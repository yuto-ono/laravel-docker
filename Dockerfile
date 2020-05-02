FROM php:fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -y git zip unzip \
	&& docker-php-ext-install pdo_mysql

