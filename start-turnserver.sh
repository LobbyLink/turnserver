#!/bin/sh
set -e

# Substitute environment variables in template
envsubst < /etc/turnserver.conf.template > /etc/turnserver.conf

# Start Coturn with the generated config
exec turnserver -c /etc/turnserver.conf
