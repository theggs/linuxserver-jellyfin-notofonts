ARG JELLYFIN_VERSION=10.9.3
FROM linuxserver/jellyfin:$JELLYFIN_VERSION

RUN apt-get update && apt-get install -y fonts-noto-cjk-extra

ENTRYPOINT ["/init"]
