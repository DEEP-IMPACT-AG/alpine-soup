from alpine:latest

ENV BUILD_DEPS="git apache-ant" \
    RUN_DEPS="bash supervisor openssh-client openjdk8-jre nodejs curl"

RUN apk update
RUN apk add $RUN_DEPS $BUILD_DEPS

RUN curl --silent https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein && \
    chmod +x /usr/local/bin/lein

