# Use the official PHP image with FPM
FROM php:8.3.7RC1-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Copy API code into the container
COPY api/ ./

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 9000 for PHP-FPM
EXPOSE 9000
