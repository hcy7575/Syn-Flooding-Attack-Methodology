#!/usr/bin/env bash
set -euo pipefail

# WARNING: Local testing only. Do NOT point to external hosts.
# Start the lab
docker compose up -d

# wait a moment for services to start
sleep 3

echo "Local lab started. Web service is reachable only on host at http://127.0.0.1:8080 (localhost-only)."
echo "To run a quick request from the client container:"
echo "  docker compose exec client wget -qO- http://web:80/ || true"
