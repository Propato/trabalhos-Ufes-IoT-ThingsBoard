#!/bin/bash

# Load .env
set -a
source ./.env
set +a

curl -v -X POST "http://$THINGSBOARD_HOST_NAME:$HTTP_PORT/api/v1/$DEVICE_TOKEN/attributes" \
  -H "Content-Type: application/json" \
  -d @data.json
