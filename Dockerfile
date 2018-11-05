FROM ruby:2.3-alpine3.7
MAINTAINER solomonxie@foxmail.com

# Thanks to https://github.com/inadarei/alpine-jekyll

COPY repositories /etc/apk/

RUN apk add --no-cache build-base curl wget && \
    gem install --no-document redcarpet kramdown maruku rdiscount RedCloth liquid pygments.rb && \
    gem install --no-document sass safe_yaml && \
    gem install --no-document jekyll -v 2.5 && \
    gem install --no-document jekyll-paginate jekyll-sass-converter && \
    gem install --no-document jekyll-sitemap jekyll-feed jekyll-redirect-from && \
    rm -rf /root/src /tmp/* /usr/share/man /var/cache/apk/*

VOLUME /var/www/html
WORKDIR /var/www/html

EXPOSE 4000
