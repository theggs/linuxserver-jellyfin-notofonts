FROM linuxserver/jellyfin:10.9.4

RUN apt-get update && apt-get install -y fonts-noto-cjk-extra

ENTRYPOINT ["/init"]
