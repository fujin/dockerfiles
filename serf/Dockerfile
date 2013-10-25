FROM ubuntu
MAINTAINER AJ Christensen <aj@junglist.io>
ADD https://dl.bintray.com/mitchellh/serf/0.1.1_linux_amd64.zip /serf.zip
RUN apt-get install unzip -y
RUN unzip /serf.zip
EXPOSE 7946:7946
EXPOSE 7373:7373
CMD ["agent -rpc-addr=0.0.0.0:7373"]
ENTRYPOINT ["/serf"]