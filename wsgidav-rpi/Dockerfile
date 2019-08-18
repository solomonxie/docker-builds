FROM resin/rpi-raspbian:jessie
MAINTAINER Solomon Xie <solomonxiewise@gmail.com>

COPY config/sources-cn.list /etc/apt/sources.list
RUN apt-get update

# Install python & pip
RUN apt-get install python3 && \
    curl -fsSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py

# Install wsgidav & relative packages
RUN pip install --no-cache-dir wsgidav cheroot && \
    mkdir -p /var/wsgidav/config

# Dependencies for compiling lxml
# https://lxml.de/installation.html
#: Bug, doesn't work. Without lxml the wsgidav can works well
RUN apt-get install libxml2-dev libxslt-dev python-dev python3-lxml && \
    pip install --no-cache-dir lxml

# Clean cache
RUN apt-get autoremove && \
    apt-get clean

COPY config/wsgidav.yaml /var/wsgidav/config/

VOLUME /var/wsgidav
EXPOSE 80

#CMD wsgidav --host 0.0.0.0 --port 8080 --root /var/wsgidav/ --no-config
CMD wsgidav -c /var/wsgidav/config/wsgidav.yaml
