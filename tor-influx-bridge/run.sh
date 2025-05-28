#!/usr/bin/with-contenv bashio

ONION_HOST=$(bashio::config 'onion_host')
REMOTE_PORT=$(bashio::config 'remote_port')
LOCAL_PORT=$(bashio::config 'local_port')

echo "Starte Tor-Forwarding von $ONION_HOST:$REMOTE_PORT auf localhost:$LOCAL_PORT"

torsocks socat TCP-LISTEN:${LOCAL_PORT},reuseaddr,fork TCP:${ONION_HOST}:${REMOTE_PORT}