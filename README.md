# Base PHP

This image is the parent for a number of downstream images that make use of PHP either as a commandline tool or for php-fpm. The images are created from a number of base operating systems including CentOS 7, Rocky Linux 8 and Ubuntu. The non-Ubuntu based images are now deprecated and will be replaced with Ubuntu based images over time. This image is meant to be minimal and aims to support the needs of a WordPress ecosystem. The images are offered in both x86_64 and arm64 architectures.

## Usage

This image, by itself, is not particularly useful. When run it passes arguments to PHP. This image is used by [10up/wp-php-fpm](https://github.com/10up/wp-php-fpm), [10up/wp-php-fpm-dev](https://github.com/10up/wp-php-fpm-dev) and more. You might use it as the basis for your own image.

## Building

There are currently a number of images being built for the different operating systems. This image is built with support for PHP 5.6, 7.0, 7.1, 7.2, 7.3, 7.4, 8.0 and 8.1. They are available under the tags:

* CentOS 7 based
  * 10up/base-php:5.6
  * 10up/base-php:7.0
  * 10up/base-php:7.1
* Rocky Linux 8 based
  * 10up/base-php:7.2
  * 10up/base-php:7.3
  * 10up/base-php:7.4
  * 10up/base-php:8.0
* Ubuntu 22.04 based
  * 10up/base-php:7.0-ubuntu
  * 10up/base-php:7.1-ubuntu
  * 10up/base-php:7.2-ubuntu
  * 10up/base-php:7.3-ubuntu
  * 10up/base-php:7.4-ubuntu
  * 10up/base-php:8.0-ubuntu
  * 10up/base-php:8.1-ubuntu

## Support Level

**Active:** 10up is actively working on this, and we expect to continue work for the foreseeable future including keeping tested up to the most recent version of WordPress.  Bug reports, feature requests, questions, and pull requests are welcome.

## Like what you see?

<p align="center">
<a href="http://10up.com/contact/"><img src="https://10up.com/uploads/2016/10/10up-Github-Banner.png" width="850"></a>
</p>
