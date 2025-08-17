#!/bin/sh
set -e

# Replace environment variables in config template
envsubst < /etc/turnserver/turnserver.conf.template > /etc/turnserver/turnserver.conf

# Start coturn
exec turnserver -c /etc/turnserver/turnserver.conf
