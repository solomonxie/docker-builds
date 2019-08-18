FROM arm32v7/ruby:2.3-jessie
MAINTAINER solomonxie@foxmail.com

# Thanks to https://github.com/inadarei/alpine-jekyll

#COPY repositories /etc/apk/

VOLUME /var/www/html
WORKDIR /var/www/html

RUN gem install --no-document redcarpet kramdown maruku rdiscount RedCloth liquid pygments.rb && \
    gem install --no-document sass safe_yaml && \
    gem install --no-document jekyll -v 2.5 && \
    gem install --no-document jekyll-paginate jekyll-sass-converter && \
    gem install --no-document jekyll-sitemap jekyll-feed jekyll-redirect-from && \
    rm -rf /root/src /tmp/* /usr/share/man /var/cache/apk/*

EXPOSE 4000
