FROM docker.io/alpine:3.22

ARG TARGETPLATFORM

RUN set -exu \
  && apk add --no-cache \
    bash \
    curl

RUN set -exu \
  && case $(echo $TARGETPLATFORM | cut -d '/' -f2) in \
    amd64) \
      curl -L https://github.com/nats-io/natscli/releases/download/v0.2.4/nats-0.2.4-linux-amd64.zip -o /tmp/nats-cli.zip ;; \
    arm64) \
      curl -L https://github.com/nats-io/natscli/releases/download/v0.2.4/nats-0.2.4-linux-arm64.zip -o /tmp/nats-cli.zip ;; \
    *) \
      echo "Unsupported architecture: ${TARGETPLATFORM}" \
      exit 1 ;; \
    esac \
  && unzip nats-cli.zip \
  && mv nats-*/nats /usr/local/bin/

ENTRYPOINT [ "/bin/bash" ]
CMD [ "--login" ]
