FROM busybox
MAINTAINER Solomon Xie <solomonxiewise@gmail.com>

ENV FRP_VERSION 0.20.0
RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && tar -xf frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && mkdir /frp \
    && cp frp_${FRP_VERSION}_linux_amd64/frp* /frp/ \
    && mkdir /conf \
    && cp frp_${FRP_VERSION}_linux_amd64/*.ini /conf/ \
    && rm -rf frp_${FRP_VERSION}_linux_amd64*

VOLUME /conf

WORKDIR /frp
CMD ["./frps","-c","/conf/frps.ini"]

