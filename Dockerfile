FROM alpine:latest

VOLUME /usr/src
WORKDIR /usr/src

RUN apk add --no-cache nodejs && \
    npm install -g jshint && \
    npm cache clear

ENTRYPOINT ["jshint"]
