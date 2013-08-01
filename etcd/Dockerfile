FROM fujin/golang
MAINTAINER AJ Christensen <aj@junglist.io>
ADD install.sh /
RUN /install.sh
EXPOSE 7001
EXPOSE 4001
RUN /etcd/bin/etcd
