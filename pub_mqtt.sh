#!/bin/bash

# Load .env
set -a
source ./.env
set +a

mosquitto_pub -d -q 1 -h "$THINGSBOARD_HOST_NAME" -p "$MQTT_PORT" -t "v1/devices/me/telemetry" -u "$DEVICE_TOKEN" -f "data.json"
mosquitto_pub -d -q 1 -h "$THINGSBOARD_HOST_NAME" -p "$MQTT_PORT" -t "v1/devices/me/attributes" -u "$DEVICE_TOKEN" -f "data.json"

