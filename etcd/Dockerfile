FROM fujin/golang
MAINTAINER AJ Christensen <aj@junglist.io>
ADD install.sh /
RUN /install.sh
CMD /etcd/bin/etcd -v -v
