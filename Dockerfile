FROM php:8.2-cli-alpine

RUN apk add --no-cache bash

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

RUN composer require 'staabm/annotate-pull-request-from-checkstyle:1.*'

ADD action-entrypoint.sh /usr/local/bin

ENTRYPOINT ["action-entrypoint.sh"]
