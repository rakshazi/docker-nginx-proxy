FROM jwilder/nginx-proxy:alpine
LABEL com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy="true"

ENV DHPARAM_BITS 4096

RUN sed -i '62iclient_max_body_size 100M;' /app/nginx.tmpl
