FROM caddy:2.5.1-alpine

ENV CADDY_PASSWORD=secret

LABEL version="latest" description="Tarefa miniep6" maintainer="Lucas Quaresma"


RUN mkdir /usr/src
RUN mkdir /usr/src/pages
COPY index.html /usr/src/pages

COPY Caddyfile /etc/caddy/Caddyfile
