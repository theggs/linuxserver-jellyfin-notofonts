export JELLYFIN_VERSION=$(cat version.txt)
docker buildx build --platform linux/amd64,linux/arm64 \
  --build-arg JELLYFIN_VERSION=$JELLYFIN_VERSION \
  --push \
  -t theggs/linuxserver-jellyfin-notofonts:$JELLYFIN_VERSION .
