FROM docker

COPY docker-swarm-wait.sh /

ENTRYPOINT [ "/docker-swarm-wait.sh" ]
