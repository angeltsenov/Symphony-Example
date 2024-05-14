# Use an official PHP image as a base
FROM php:8.2-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy Project files
COPY ./my-project ./

# Install PHP dependencies
RUN apt-get update && apt-get install -y \
    git \
    zlib1g-dev \
    libzip-dev \
    unzip \
    libicu-dev \
    libpq-dev \
    && docker-php-ext-install \
    intl \
    pdo \
    pdo_pgsql

RUN docker-php-ext-install zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash

ENV COMPOSER_ALLOW_SUPERUSER=1

# Install MYSQLI extension
RUN docker-php-ext-install mysqli

# Install PDO MYSQL extension
RUN docker-php-ext-install pdo_mysql

RUN composer install

# Run Apache in the foreground
CMD ["apache2-foreground"]