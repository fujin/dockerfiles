FROM ubuntu:precise

MAINTAINER AJ Christensen <aj@junglist.io>

ENV VERSION 1.4.2.9
ENV FILENAME ngx_openresty-${VERSION}.tar.gz
ENV UNPACK_DIRECTORY /tmp/openresty
ENV INSTALL_DIRECTORY /openresty

ADD http://openresty.org/download/${FILENAME} /tmp/${FILENAME}
ADD install.sh /

RUN /install.sh
WORKDIR /openresty
