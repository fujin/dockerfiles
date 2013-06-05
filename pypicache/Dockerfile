FROM fujin/precise
MAINTAINER fujin
ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONPATH .
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe multiverse' > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -q git make python-all python-pip
RUN git clone https://github.com/micktwomey/pypicache.git /srv/pypicache
RUN cd /srv/pypicach && make init runserver
EXPOSE 8001