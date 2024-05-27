docker buildx build --platform linux/amd64,linux/arm64 --push -t theggs/linuxserver-jellyfin-notofonts:$(cat version.txt) .
