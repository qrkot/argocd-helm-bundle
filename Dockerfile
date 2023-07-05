FROM alpine:edge

ENV HOME=/home/user/

RUN apk add --no-cache gnupg curl sops age kubectl && adduser -D user

#COPY scripts/ /home/user/.local/share/helm/plugins/helm-plugins/scripts/
#COPY plugin.yaml /home/user/.local/share/helm/plugins/helm-plugins/

USER user
