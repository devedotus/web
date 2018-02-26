FROM nginx:alpine

USER root

RUN set -x \
    && deluser nginx \
    && addgroup -g 500 -S nginx \
    && adduser -u 500 -D -S -h /var/www nginx nginx \
    && chown nginx: /etc/nginx

USER nginx

COPY config /etc/nginx
