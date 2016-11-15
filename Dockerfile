FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["openssl"]
