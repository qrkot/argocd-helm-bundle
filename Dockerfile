FROM alpine:edge

ENV HOME=/home/user/

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing sops age kubectl \
    && apk add --no-cache gnupg curl \
    && adduser -D user

#COPY scripts/ /home/user/.local/share/helm/plugins/helm-plugins/scripts/
#COPY plugin.yaml /home/user/.local/share/helm/plugins/helm-plugins/

USER user
