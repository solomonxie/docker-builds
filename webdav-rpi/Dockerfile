FROM resin/rpi-raspbian:jessie
MAINTAINER Solomon Xie <solomonxie@foxmail.com>

COPY sources.list /etc/apt/

RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    a2enmod dav dav_fs && \
    a2dissite 000-default

EXPOSE 80

VOLUME /var/apache2/sites-enabled
VOLUME /var/webdav

ADD run.sh /
CMD ["/run.sh"]
