# Things Boards

## Requirements

```bash
sudo chmod +x *.sh
```

|      Tool      | Version |
| :------------: | :-----: |
|     Docker     | 28.0.4  |
| Docker Compose | 2.34.0  |

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

- System Administrator: sysadmin@thingsboard.org / sysadmin
- Tenant Administrator: tenant@thingsboard.org / tenant
- Customer User: customer@thingsboard.org / customer

## Stopping

```bash
sudo ./stop.sh
```

## Sending data

You can use:

- [send_http](./send_http.sh) to send data through HTTP requests.
- [send_mqtt](./send_mqtt.sh) to send data through MQTT requests.
