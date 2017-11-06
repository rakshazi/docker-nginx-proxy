FROM jwilder/nginx-proxy:alpine
LABEL com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy="true"
RUN sed -i '64iclient_max_body_size 100M;' /app/nginx.tmpl
