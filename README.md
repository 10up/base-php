# CentOS - Base PHP

> This image is the parent for a number of downstream images that make use of PHP either as a commandline tool or for php-fpm. Based on CentOS 7 and CentOS 8, this image is meant to be minimal and aims to support the needs of a WordPress site. 

[![Support Level](https://img.shields.io/badge/support-active-green.svg)](#support-level) [![MIT License](https://img.shields.io/github/license/10up/base-php.svg)](https://github.com/10up/base-php/blob/master/LICENSE)

## Usage

This image, by itself, is not particularly useful. When run it passes arguments to PHP. 

## Building

This project takes advantage of custom build phase hooks as described at https://docs.docker.com/docker-hub/builds/advanced/. When setting up builds on docker hub create automated builds with rules to build for the master branch for each PHP version you want built. Currently this image is built with 5.6, 7.0, 7.1, 7.2, 7.3 and 7.4.

## Support Level

**Active:** 10up is actively working on this, and we expect to continue work for the foreseeable future including keeping tested up to the most recent version of WordPress.  Bug reports, feature requests, questions, and pull requests are welcome.

## Like what you see?

<p align="center">
<a href="http://10up.com/contact/"><img src="https://10up.com/uploads/2016/10/10up-Github-Banner.png" width="850"></a>
</p>
