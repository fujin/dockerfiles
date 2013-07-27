FROM ubuntu
MAINTAINER AJ Christensen <aj@junglist.io>
ADD http://download01.thoughtworks.com/go/13.2/ga/go-server-13.2.0-17155.deb /tmp/go-server.deb
ADD policy-rc.d /usr/sbin/policy-rc.d
RUN echo 127.0.0.1 $(hostname) > /etc/hosts
RUN apt-get update
RUN apt-get install default-jre unzip -y
RUN dpkg -i /tmp/go-server.deb
RUN chown -R go: /tmp
RUN rm /tmp/go-server.deb
ADD go-server /etc/default/go-server
ADD start.sh /start.sh
EXPOSE 8153
EXPOSE 8154
CMD /start.sh