FROM coturn/coturn:alpine
COPY turnserver.conf /etc/turnserver/turnserver.conf
EXPOSE 3478 3478/udp
CMD ["turnserver", "-c", "/etc/turnserver/turnserver.conf"]