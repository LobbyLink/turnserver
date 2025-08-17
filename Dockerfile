FROM coturn/coturn:alpine

# install envsubst (comes from gettext)
RUN apk add --no-cache gettext

COPY turnserver.conf /etc/turnserver/turnserver.conf.template
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 7625 7625/udp
ENTRYPOINT ["docker-entrypoint.sh"]
