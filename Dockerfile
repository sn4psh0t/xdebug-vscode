FROM php:7.4-apache

# Install Xdebug
RUN pecl install -f xdebug
# Install PDO
RUN docker-php-ext-install mysqli pdo_mysql
RUN echo "zend_extension=xdebug\nxdebug.mode=debug\nxdebug.start_with_request=yes\nxdebug.log=/var/log/xdebug.log" > /usr/local/etc/php/conf.d/xdebug.ini;