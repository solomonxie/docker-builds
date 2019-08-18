FROM resin/rpi-raspbian:jessie

MAINTAINER Solomon Xie <14041622+solomonxie@users.noreply.github.com>

COPY sources-cn.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install sudo curl wget git vim bashdb -y

RUN useradd -m -s /bin/bash ubuntu && \
    usermod -aG sudo ubuntu && \
    echo "root:root123" | chpasswd && \
    echo "pi:pi123" | chpasswd && \
    su - pi

WORKDIR /home/pi

CMD /bin/bash

