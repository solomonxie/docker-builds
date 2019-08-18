FROM resin/rpi-raspbian:jessie

MAINTAINER Solomon Xie <solomonxiewise@gmail.com>

COPY sources-cn.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install sudo curl wget git vim bashdb -y

RUN useradd -m -s /bin/bash pi && \
    usermod -aG sudo pi && \
    echo "root:root123" | chpasswd && \
    echo "pi:pi123" | chpasswd && \
    su - pi

WORKDIR /home/pi

CMD /bin/bash

