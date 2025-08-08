FROM coturn/coturn:alpine
COPY turnserver.conf /etc/turnserver/turnserver.conf
EXPOSE 7625 7625/udp
CMD ["turnserver", "-c", "/etc/turnserver/turnserver.conf"]