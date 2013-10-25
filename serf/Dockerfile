FROM ubuntu
MAINTAINER AJ Christensen <aj@junglist.io>
ADD https://dl.bintray.com/mitchellh/serf/0.1.1_linux_amd64.zip /serf.zip
RUN apt-get install unzip -y
RUN unzip /serf.zip
CMD ["--help"]
ENTRYPOINT ["/serf"]