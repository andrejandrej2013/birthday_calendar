FROM php:8.1-fpm


RUN apt-get update && apt-get install -y \
      apt-utils \
      libpq-dev \
      libpng-dev \
      libzip-dev \
      zip unzip \
      git && \
      docker-php-ext-install pdo_pgsql && \
      docker-php-ext-install bcmath && \
      docker-php-ext-install gd && \
      docker-php-ext-install zip && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pecl install xdebug && docker-php-ext-enable xdebug
COPY ./_docker/app/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

COPY ./_docker/app/php.ini /usr/local/etc/php/conf.d/php.ini
WORKDIR /var/www
RUN curl -sS https://getcomposer.org/installer | php -- \
    --filename=composer \
    --install-dir=/usr/local/bin


#ENV COMPOSER_ALLOW_SUPERUSER=1

CMD ["php-fpm"]
# Install composer
