FROM ubuntu:20.04

ARG PHP_VERSION=7.3

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt update && \
  apt dist-upgrade -y && \
  apt install gnupg -y && \
  apt clean

RUN \
  echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu focal main" | tee /etc/apt/sources.list.d/ondrej-ubuntu-php-focal.list && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 14AA40EC0831756756D7F66C4F4EA0AAE5267A6C && \
  apt update && \
  apt clean 

RUN \
  apt install -y \
  php${PHP_VERSION}-curl \
  php${PHP_VERSION}-xml \
  php${PHP_VERSION}-xmlrpc \
  php${PHP_VERSION}-memcache \
  php${PHP_VERSION}-memcached \
  php${PHP_VERSION}-mysql \
  php${PHP_VERSION}-gd \
  php${PHP_VERSION}-mbstring \
  php${PHP_VERSION}-cli \
  php${PHP_VERSION}-opcache \
  php${PHP_VERSION}-redis \
  php${PHP_VERSION}-bcmath \
  php${PHP_VERSION}-soap \
  php${PHP_VERSION}-zip \
  php${PHP_VERSION}-intl \
  php${PHP_VERSION}-imagick \
  imagemagick && apt clean
    
USER www-data

CMD ["php"]
