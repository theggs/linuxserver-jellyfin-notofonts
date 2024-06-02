# What it is
Jellyfin need CJK fonts to create some media post and subtitle etc. But it is not contained in the docker image provided.
One resolution is use linuxserver/jellyfin image and install it when init:
add environment vars in docker-compose:
```yaml
    environment:
      - DOCKER_MODS=linuxserver/mods:universal-package-install
      - INSTALL_PACKAGES=fonts-noto-cjk-extra
```
It will take a long time for installing.

This image is used to prebuild a linuxserver/jellyfin image that contain fonts-noto-cjk-extra. So the container env can have cjk fonts.

# How to use
images can be access from:
```
theggs/linuxserver-jellyfin-notofonts:{{jellyfin_version}}
```
or
```
ghcr.io/theggs/linuxserver-jellyfin-notofonts:{{jellyfin_version}}
```

As it is based on linuxserver/jellyfin, just replace it in the docker command or docker-compose yaml field `image` in linuxserver instruction https://docs.linuxserver.io/images/docker-jellyfin/. For example:
```yaml
---
services:
  jellyfin:
    image: theggs/linuxserver-jellyfin-notofonts:10.9.4
    container_name: jellyfin
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - JELLYFIN_PublishedServerUrl=192.168.0.5 #optional
    volumes:
      - /path/to/library:/config
      - /path/to/tvseries:/data/tvshows
      - /path/to/movies:/data/movies
    ports:
      - 8096:8096
      - 8920:8920 #optional
      - 7359:7359/udp #optional
      - 1900:1900/udp #optional
    restart: unless-stopped
```

# Other Notes
I don't use Jellyfin frequently, and won't support this project much.
**Anyone use this image, please use at your own risk.**