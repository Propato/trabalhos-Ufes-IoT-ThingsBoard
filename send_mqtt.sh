#!/bin/bash

mosquitto_pub -d -q 1 -h localhost -p 1883 -t v1/devices/me/telemetry -u "bCm7z3Y1Jm6ibOjVXYOY" -m "{temperature:40}"