FROM alpine:latest

MAINTAINER Yauri Attamimi <yauritux@gmail.com>

RUN apk add git
WORKDIR /bin
ADD curl-amd64 curl
RUN chmod u+x /bin/curl
RUN export PATH=$PATH:/bin/curl
WORKDIR /home

CMD ["/bin/sh"]
