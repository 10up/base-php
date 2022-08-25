ARG CENTOS_VERSION=8
FROM rockylinux:${CENTOS_VERSION}

ARG PHP_VERSION=7.3
ARG CENTOS_VERSION=8

RUN yum upgrade -y && \
  yum install -y http://rpms.remirepo.net/enterprise/remi-release-${CENTOS_VERSION}.rpm && \
  dnf module install php:remi-${PHP_VERSION} -y && \
  yum clean all
RUN yum install -y \
  php-common \
  php-xmlrpc \
  php-pecl-memcached \
  php-pecl-memcache \
  php-mysqlnd \
  php-pear \
  php-gd \
  php-mbstring \
  php-cli \
  php-process \
  php-opcache \
  php-pecl-redis \
  php-bcmath \
  php-pecl-gearman \
  php-soap \
  php-zip \
  php-intl \
  ImageMagick \
  findutils \
  php-pecl-imagick && yum clean all

RUN useradd -u 33 -g 33 www-data

# On centos ownership is root:apache
RUN chgrp 33 /var/lib/php/session

USER www-data

CMD ["php"]
