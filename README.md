# Logfile 4 docker

When developing on OSX accessing the containers logfile might be hard.

## Installing:
Adjust your docker-daemon to have a different log-driver:

$HOME/.docker/daemon.json
```json
  "log-driver": "fluentd",
  "log-opts": {
    "fluentd-address": "localhost:24225",
    "fluentd-async": "true",
    "tag": "docker/{{.Name}}"
  }
```

Make a logdirectory:
```
mkdir $HOME/logs
```

Start fluentd:
```
docker-compose up -d
```
