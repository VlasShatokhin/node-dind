# scala, sbt + dind docker image

## to buid the image
```
NODE_VERSION=14.5.0

IMAGE_TAG=${NODE_VERSION}

docker pull vlasshatokhin/node-dind:latest || true
docker build \
    --pull \
    --build-arg NODE_VERSION=${NODE_VERSION} \
    --cache-from $CI_REGISTRY_IMAGE:latest \
    -t vlasshatokhin/node-dind:${IMAGE_TAG} \
    .
```
