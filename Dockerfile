FROM python:3-alpine

MAINTAINER Solomon Xie <solomonxiewise@gmail.com>
# Thanks to mar10/wsgidav

RUN pip install --no-cache-dir wsgidav cheroot && \
    mkdir -p /var/wsgidav

# Compile dependencies to pip install lxml (including alpine musl libc)
#: Bug, can't install lxml. wsgidav works fine without lxml
#RUN apk --no-cache add gcc libxslt-dev musl-dev
#RUN pip install --no-cache-dir lxml

<<<<<<< HEAD
=======
RUN pip install --no-cache-dir wsgidav cheroot
RUN mkdir -p /var/wsgidav/configs && \
    mkdir -p /var/wsgidav/root && \
    mkdir -p /var/wsgidav/webdav && \
    mkdir -p /var/wsgidav/share

>>>>>>> fb9375c950506d38a9e6d996fafb570894b2f26d
COPY configs/wsgidav.yaml /var/wsgidav/configs/

VOLUME /var/wsgidav
EXPOSE 80
<<<<<<< HEAD
=======
VOLUME /var/wsgidav/root
VOLUME /var/wsgidav/webdav
VOLUME /var/wsgidav/share
>>>>>>> fb9375c950506d38a9e6d996fafb570894b2f26d

#CMD wsgidav --host 0.0.0.0 --port 80 --root /var/wsgidav/root --no-config
CMD wsgidav -c /var/wsgidav/configs/wsgidav.yaml
