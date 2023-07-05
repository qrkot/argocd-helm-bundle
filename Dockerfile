FROM alpine:edge

# Dir with the cloned Helm Secrets repo:
ARG HS_DIR=helmsec

ENV HOME=/home/user/

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing sops age kubectl \
    && apk add --no-cache gnupg curl \
    && adduser -D user

COPY ./${HS_DIR}/scripts/ /home/user/.local/share/helm/plugins/helm-plugins/scripts/
COPY ./${HS_DIR}/plugin.yaml /home/user/.local/share/helm/plugins/helm-plugins/

USER user
