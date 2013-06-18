FROM fujin/precise
MAINTAINER fujin
ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONPATH .
ENV DOCKER_REGISTRY_PATH /srv/docker-registry
ENV DOCKER_REGISTRY_URL https://github.com/dotcloud/docker-registry/archive/master.tar.gz
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe multiverse' > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -q make python-all python-pip wget
RUN mkdir -p $DOCKER_REGISTRY_PATH
RUN wget -q $DOCKER_REGISTRY_URL -O - | tar zxvf - -C $DOCKER_REGISTRY_PATH --strip-components=1
RUN cd $DOCKER_REGISTRY_PATH && pip install -Ur requirements.txt
CMD cd $DOCKER_REGISTRY_PATH && gunicorn --log-level debug --debug -k gevent --max-requests 100 --graceful-timeout 120 -t 120 -b 0.0.0.0:$PORT_WWW -w 8 wsgi:application
EXPOSE 80