FROM alpine:latest

MAINTAINER Yoav Aharoni <yoavah@gmail.com>

RUN apk update && apk upgrade && apk add --update bash && rm -rf /var/cache/apk/*

