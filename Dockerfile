# Args
ARG NODE_VERSION=14.7.0

FROM node:${NODE_VERSION}-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y -qq --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables && \
    apt-get clean autoclean

# Installing docker
RUN curl -sSL https://get.docker.com/ | sh

RUN apt-get clean autoclean

# Cleanup
RUN rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/*

CMD service docker start && /bin/bash
