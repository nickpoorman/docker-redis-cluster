#!/bin/bash

if [ -z "$CONFIG_URI" ]; then
  echo "CONFIG_URI must be set"
  exit 1
fi

# First fetch the config
echo "Fetching config from ${CONFIG_URI}"
saveTo="/usr/local/etc/redis/redis.conf"

echo "Saving config to: ${saveTo}"
wget -qO $saveTo $CONFIG_URI

redis-server $saveTo
