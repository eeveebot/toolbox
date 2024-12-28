FROM docker.io/natsio/nats-box:0.16.0


RUN set -exu \
  && addgroup \
    --gid 1000 \
    "user" \
  && adduser \
    --disabled-password \
    --gecos "" \
    --ingroup "user" \
    --uid 1000 \
    user

USER user
