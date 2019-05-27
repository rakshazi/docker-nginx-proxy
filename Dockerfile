FROM jwilder/nginx-proxy:alpine
LABEL com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy="true"

ENV DHPARAM_BITS 4096

RUN echo 'client_max_body_size 0;' > /etc/nginx/conf.d/client_max_body_size.conf && \
    echo 'proxy_max_temp_file_size 10240m;' > /etc/nginx/conf.d/proxy_max_temp_file_size.conf
