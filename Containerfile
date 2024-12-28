FROM docker.io/natsio/nats-box:0.16.0

USER nats

WORKDIR /home/nats

CMD [ "tail" , "-f", "/dev/null" ]
