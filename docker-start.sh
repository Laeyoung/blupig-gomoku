#!/bin/sh
set -euo pipefail

# Replace server uri and path
sed -i "s|var api_base_url.*|var api_base_url = 'https://master-blupig-gomoku-laeyoung.endpoint.dev.ainize.ai';|" /app/gui/client/index.html

# Start nginx daemon
nginx

# Start node server
cd /app/gui/server
exec npm start
