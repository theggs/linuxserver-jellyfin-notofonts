FROM linuxserver/jellyfin:10.8.13

RUN apt-get update && apt-get install -y fonts-noto-cjk-extra

ENTRYPOINT ["/init"]
