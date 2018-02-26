FROM nginx:alpine

USER root

RUN set -x \
    && deluser nginx \
    && addgroup -g 500 -S nginx \
    && adduser -u 500 -D -S -h /var/www nginx nginx \
    && chown nginx: /usr/local/etc

USER nginx

COPY config /etc/nginx
