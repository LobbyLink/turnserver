FROM coturn/coturn:alpine
COPY turnserver.conf /etc/turnserver/turnserver.conf
EXPOSE 10523 10523/udp
CMD ["turnserver", "-c", "/etc/turnserver/turnserver.conf"]