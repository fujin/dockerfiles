FROM ubuntu
MAINTAINER AJ Christensen <aj@junglist.io>
ADD http://download01.thoughtworks.com/go/13.2/ga/go-agent-13.2.0-17155.deb /tmp/go-agent.deb
RUN apt-get update
RUN apt-get install default-jre -y
RUN dpkg -i /tmp/go-agent.deb
RUN rm /tmp/go-agent.deb
CMD /etc/init.d/go-agent start