#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a4873fcc-2668-48fa-88f0-875edcb33bcf"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

