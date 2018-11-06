FROM python:3-alpine

MAINTAINER Solomon Xie <solomonxiewise@gmail.com>
# Thanks to mar10/wsgidav

RUN pip install --no-cache-dir wsgidav cheroot && \
    mkdir -p /var/wsgidav

# Compile dependencies to pip install lxml (including alpine musl libc)
#: Bug, can't install lxml. wsgidav works fine without lxml
#RUN apk --no-cache add gcc libxslt-dev musl-dev
#RUN pip install --no-cache-dir lxml

COPY configs/wsgidav.yaml /var/wsgidav/configs/

VOLUME /var/wsgidav
EXPOSE 80

#CMD wsgidav --host 0.0.0.0 --port 80 --root /var/wsgidav/root --no-config
CMD wsgidav -c /var/wsgidav/configs/wsgidav.yaml
