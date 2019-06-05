# Docker Swarm Wait

Waits for a docker swarm deploy to complete.

Example Usage:

`docker-swarm-wait.sh $services`

Help output:

```bash
$ ./docker-swarm-wait.sh -h
docker-swarm-wait.sh [opts] services...
  -h:     this help message
  -r:     treat a rollback as successful (by default, a rollback indicates failure)
  -s sec: frequency to poll service state (default 5 sec)
  -t sec: timeout to stop waiting
```

## Usage as container

```bash
$ docker run --rm -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  sudobmitch/docker-swarm-wait $services
```

or with an alias

```bash
$ alias docker-swarm-wait='docker run --rm -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  sudobmitch/docker-swarm-wait'
```

The respective container is available on
[Docker Hub](https://hub.docker.com/r/gioxtech/docker-swarm-wait) and built
with [Docker Hub Automated Builds](https://docs.docker.com/docker-hub/builds/).

