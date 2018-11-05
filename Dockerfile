FROM ubuntu:16.04
MAINTAINER Solomonxie <solomonxie@foxmail.com>

RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    a2enmod dav dav_fs && \
    a2dissite 000-default

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_RUN_DIR /var/run/apache2

ADD webdav.conf /etc/apache2/sites-available/webdav.conf

RUN mkdir -p /var/lock/apache2; chown www-data /var/lock/apache2 && \
    mkdir -p /var/www/webdav; chown www-data /var/www/webdav && \
    a2ensite webdav

ADD run.sh /

EXPOSE 80

VOLUME /var/www/webdav

CMD ["/run.sh"]
