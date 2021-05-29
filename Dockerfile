FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add nginx supervisor vim