FROM php:8.2-cli-alpine

RUN apk add --no-cache bash

ADD https://raw.githubusercontent.com/staabm/annotate-pull-request-from-checkstyle/1.8.5/cs2pr /usr/local/bin
RUN chmod +x /usr/local/bin/cs2pr
ADD action-entrypoint.sh /usr/local/bin

ENTRYPOINT ["action-entrypoint.sh"]
