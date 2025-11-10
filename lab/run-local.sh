#!/usr/bin/env bash
# WARNING: Local testing only. Do NOT point to external hosts.
docker compose up -d
sleep 3
echo "Local lab started. Use a load generator container to perform safe tests against http://localhost:8080"
