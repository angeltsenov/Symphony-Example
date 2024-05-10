# Use an official PHP image as a base
FROM php:8.2-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy composer.lock and composer.json
#COPY composer.lock composer.json ./
#COPY project-files/index.php ./

# Install PHP dependencies
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libpq-dev \
    && docker-php-ext-install \
    intl \
    pdo \
    pdo_pgsql

# Install Composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Symfony CLI
#RUN curl -sS https://get.symfony.com/cli/installer | bash

# Expose port 80
#EXPOSE 80

# Run Apache in the foreground
CMD ["apache2-foreground"]