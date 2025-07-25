# Things Boards

## Requirements

```bash
sudo chmod +x *.sh
```

|      Tool      | Min Version |
| :------------: | :---------: |
|  libmosquitto  |   2.0.18    |
|      node      |   22.14.0   |
|     Docker     |   28.0.4    |
| Docker Compose |   2.34.0    |

## Running

Before running for the first time, you need to execute:

```bash
sudo ./init.sh
```

Then, finally:

```bash
sudo ./start.sh
```

After starting, you can access [localhost:8080](http://localhost:8080) and log in with:

-   System Administrator: sysadmin@thingsboard.org / sysadmin
-   Tenant Administrator: tenant@thingsboard.org / tenant
-   Customer User: customer@thingsboard.org / customer

## Stopping

```bash
sudo ./stop.sh
```

## Sending data

You can use:

-   [send_http](./send_http.sh) to send attributes data through HTTP requests.
-   [pub_mqtt](./pub_mqtt.sh) to send attributes and telemetry data through MQTT requests.

### MQTT

-   v1/devices/me/telemetry
    -   To send data to ThingsBoard Server Node
-   v1/devices/me/attributes
    -   To send data to client attributes

> HTTP follows a similar pattern

## Getting data

By running [request-mqtt](./request-mqtt.js), the script will process an MQTT Sub and Pub action. The platform has a communication method that copies HTTP. You publish a body (field filter - which filter you want to see) to `.../request/ID` and you will receive the response in `.../response/ID`.

## And more

Things Board has many other features and communication methods, feel free to explore.
