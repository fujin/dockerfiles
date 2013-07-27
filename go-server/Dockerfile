FROM ubuntu
MAINTAINER AJ Christensen <aj@junglist.io>
ADD http://download01.thoughtworks.com/go/13.2/ga/go-server-13.2.0-17155.deb /tmp/go-server.deb
RUN apt-get update
RUN apt-get install default-jre -y
RUN dpkg -i /tmp/go-server.deb
RUN rm /tmp/go-server.deb
ADD go-server /etc/default/go-server
ADD start.sh /start.sh
CMD /start.sh