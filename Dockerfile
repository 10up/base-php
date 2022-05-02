FROM ubuntu:22.04

ARG PHP_VERSION=7.3

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && \
  apt-get dist-upgrade -y && \
  apt-get install gnupg ca-certificates -y && \
  rm -rf /var/lib/apt/lists/*

RUN \
  echo "deb https://ppa.launchpadcontent.net/ondrej/php/ubuntu/ jammy main" | tee /etc/apt/sources.list.d/ondrej-ubuntu-php-jammy.list && \
  mkdir ~/.gnupg && chmod 0700 $_ && \
  gpg --no-default-keyring --keyring /usr/share/keyrings/ondrej-ubuntu-php.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 14AA40EC0831756756D7F66C4F4EA0AAE5267A6C && \
  sed -i 's/deb /deb \[signed\-by=\/usr\/share\/keyrings\/ondrej-ubuntu-php.gpg\] /' /etc/apt/sources.list.d/ondrej-ubuntu-php-jammy.list && \
  apt-get update && \
  rm -rf /var/lib/apt/lists/*

RUN \
  apt-get update && apt-get install -y \
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
  imagemagick && \
  rm -rf /var/lib/apt/lists/*
    
USER www-data

CMD ["php"]
