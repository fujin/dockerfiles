FROM ubuntu:precise

MAINTAINER AJ Christensen <aj@junglist.io>

ADD http://nginx.org/keys/nginx_signing.key /tmp/nginx_signing.key
#ADD nginx.list.d /etc/apt/sources.list.d/nginx
ADD nginx.list.d /etc/apt/sources.list
ADD dependencies.sh /
ADD start.sh /

RUN /dependencies.sh

CMD /start.sh