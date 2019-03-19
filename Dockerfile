FROM php:7-apache

RUN  pecl install xdebug-2.7.0 \
  && docker-php-ext-enable xdebug

ADD ./php.ini /usr/local/etc/php/

EXPOSE 80