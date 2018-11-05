FROM python:3.7-alpine

MAINTAINER Solomon Xie <solomonxiewise@gmail.com>
# Thanks to mar10/wsgidav

# Compile dependencies to pip install lxml (including alpine musl libc)
RUN apk --no-cache add gcc libxslt-dev musl-dev

RUN pip install --no-cache-dir wsgidav cheroot
RUN mkdir -p /var/wsgidav/root

EXPOSE 80
VOLUME /var/wsgidav/root

CMD wsgidav --host 0.0.0.0 --port 80 --root /var/wsgidav/root --no-config
