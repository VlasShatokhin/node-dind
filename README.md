# node + docker

## Building the image
```sh
NODE_VERSION=14.7.0

IMAGE_NAME=vlasshatokhin/node-dind
IMAGE_TAG=${NODE_VERSION}

docker pull ${IMAGE_NAME}:latest || true
docker build \
    --pull \
    --build-arg NODE_VERSION=${NODE_VERSION} \
    --cache-from ${IMAGE_NAME}:latest \
    -t ${IMAGE_NAME}:${IMAGE_TAG} \
    .
docker push ${IMAGE_NAME}:${IMAGE_TAG}
docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${IMAGE_NAME}:latest
docker push ${IMAGE_NAME}:latest
```
