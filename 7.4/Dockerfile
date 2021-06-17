FROM webdevops/php-apache-dev:7.4

MAINTAINER Igor Goltsov <igor@ecomgems.com>

ENV WEB_DOCUMENT_ROOT=/phpapp
RUN set -x \
    && pecl uninstall xdebug \
    && pecl install -f xdebug-2.9.8 \
    && apt update \
    && apt install --assume-yes bash less pv unzip htop mc lsof default-mysql-client \
    && docker-image-cleanup \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /phpapp
