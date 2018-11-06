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

>>>>>>> b958989abbe3fc8c38928c7a1c369c9645fe5d3f
COPY configs/wsgidav.yaml /var/wsgidav/configs/

VOLUME /var/wsgidav
EXPOSE 80
<<<<<<< HEAD

#CMD wsgidav --host 0.0.0.0 --port 8080 --root /var/wsgidav/ --no-config
CMD wsgidav -c /var/wsgidav/config/wsgidav.yaml
=======
VOLUME /var/wsgidav/root
VOLUME /var/wsgidav/webdav
VOLUME /var/wsgidav/share

#CMD wsgidav --host 0.0.0.0 --port 80 --root /var/wsgidav/root --no-config
CMD wsgidav -c /var/wsgidav/configs/wsgidav.yaml
>>>>>>> b958989abbe3fc8c38928c7a1c369c9645fe5d3f
