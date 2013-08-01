FROM fujin/golang
MAINTAINER AJ Christensen <aj@junglist.io>
ADD install.sh /
RUN /install.sh
CMD /etcd/bin/etcd -w 8001 -s 7001 -c 4001 -v -v
