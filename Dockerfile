FROM jwilder/nginx-proxy:alpine
LABEL com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy="true"

ENV DHPARAM_BITS 4096

RUN echo 'client_max_body_size 0;' > /etc/nginx/conf.d/client_max_body_size.conf
RUN echo 'location ^~ /.well-known/acme-challenge/ {auth_basic off;allow all;root /usr/share/nginx/html;try_files $uri =404;break;}' > /etc/nginx/conf.d/acme_challenge.conf
