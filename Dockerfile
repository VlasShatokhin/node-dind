# Args
ARG NODE_VERSION=14.6.0

FROM node:${NODE_VERSION}-slim

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables

# Installing docker
RUN curl -sSL https://get.docker.com/ | sh

RUN apt-get clean

CMD service docker start && /bin/bash
