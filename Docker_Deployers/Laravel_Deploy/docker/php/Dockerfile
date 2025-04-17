FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git unzip curl zip libpng-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY docker/php/start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
