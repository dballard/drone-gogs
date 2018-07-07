FROM alpine:3.8

RUN apk add --no-cache ca-certificates curl

COPY gogs-notify /

ENTRYPOINT ["/gogs-notify"]
