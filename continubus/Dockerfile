FROM fujin/go-agent
MAINTAINER AJ Christensen <aj@junglist.io>
RUN apt-get update
RUN apt-get install python-software-properties -y
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install ruby rubygems ruby1.9.3 ruby-switch build-essential libxslt1-dev libxml2-dev unzip -y
RUN ruby-switch --set ruby1.9.1
RUN gem install bundler
CMD /start.sh