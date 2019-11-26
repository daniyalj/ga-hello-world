# Container image that runs your code
FROM alpine:3.10

RUN apk update \
 && apk add jq \
 && rm -rf /var/cache/apk/*
