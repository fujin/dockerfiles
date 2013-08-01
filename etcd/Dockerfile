FROM fujin/golang
MAINTAINER AJ Christensen <aj@junglist.io>
ADD install.sh /
RUN /install.sh
# web ui
EXPOSE 8001
# raft server
EXPOSE 7001
# etcd client
EXPOSE 4001
CMD /etcd/bin/etcd -w 8001 -s 7001 -c 4001 -v -v
