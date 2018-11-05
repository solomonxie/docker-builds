FROM python:3-alpine

MAINTAINER Solomon Xie <solomonxiewise@gmail.com>
# Thanks to mar10/wsgidav

# Compile dependencies to pip install lxml (including alpine musl libc)
RUN apk --no-cache add gcc libxslt-dev musl-dev

RUN pip install --no-cache-dir wsgidav cheroot
RUN mkdir -p /var/wsgidav/configs && \
    mkdir -p /var/wsgidav/root && \
    mkdir -p /var/wsgidav/webdav && \
    mkdir -p /var/wsgidav/share

COPY configs/wsgidav.yaml /var/wsgidav/configs/

EXPOSE 80
VOLUME /var/wsgidav/root
VOLUME /var/wsgidav/webdav
VOLUME /var/wsgidav/share

#CMD wsgidav --host 0.0.0.0 --port 80 --root /var/wsgidav/root --no-config
CMD wsgidav -c /var/wsgidav/configs/wsgidav.yaml
