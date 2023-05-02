# Use an official PHP image as the base image
FROM php:7.4-apache

# Copy the application code to the container
COPY Source code/ /var/www/html/

# Copy the database file to the container
COPY database.sql /

# Install required PHP extensions
RUN apt-get update && apt-get install -y \
    mysql-client \
    libmcrypt-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libzip-dev \
&& docker-php-ext-install \
    mysqli \
    pdo_mysql \
    mbstring \
    gd

# Install phpMyAdmin
RUN apt-get update && apt-get install -y \
    phpmyadmin

# Copy the phpMyAdmin config to the Apache config directory
COPY Source code/phpmyadmin.conf /etc/apache2/conf-available/

# Enable the phpMyAdmin config
RUN a2enconf phpmyadmin

# Set the environment variables
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# Update the document root in the Apache config
RUN sed -i -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!" /etc/apache2/sites-available/*.conf

# Import the database
RUN mysql -u root -p password < database.sql

# Update the database configuration
RUN sed -i "s/database_name_here/invite/g" /var/www/html/app/config/database.php \
    && sed -i "s/username_here/root/g" /var/www/html/app/config/database.php \
    && sed -i "s/password_here/password/g" /var/www/html/app/config/database.php

# Restart Apache to apply the changes
RUN service apache2 restart

# Expose port 80 to the host
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]