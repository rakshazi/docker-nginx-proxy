FROM jwilder/nginx-proxy:alpine

RUN sed -i '64iclient_max_body_size 100M;' /app/nginx.tmpl

