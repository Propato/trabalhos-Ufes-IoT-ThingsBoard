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

## And more

Things Board has many other features and communication methods, feel free to explore.
