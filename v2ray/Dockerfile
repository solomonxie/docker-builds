FROM ubuntu:16.04

MAINTAINER "Solomonxie <solomonxiewise@gmail.com>"

EXPOSE 23456

COPY go.sh /tmp/go.sh

RUN chmod +x /tmp/go.sh && \
    /tmp/go.sh && \
    chmod +x /usr/bin/v2ray/v2ctl && \
    chmod +x /usr/bin/v2ray/v2ray

ENV PATH /usr/bin/v2ray:$PATH

COPY config.json /etc/v2ray/config.json

CMD ["v2ray", "-config=/etc/v2ray/config.json"]
