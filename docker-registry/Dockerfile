FROM fujin/precise
MAINTAINER fujin
ENV DEBIAN_FRONTEND noninteractive
# ENV PYTHONPATH .
ENV DOCKER_REGISTRY_PATH /srv/docker-registry
ENV DOCKER_REGISTRY_GIT_URL https:/github.com/dotcloud/docker-registry
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe multiverse' > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -q git make python-all python-pip
RUN git clone $DOCKER_REGISTRY_GIT_URL $DOCKER_REGISTRY_PATH
RUN $DOCKER_REGISTRY_PATH/build.sh
CMD cd $DOCKER_REGISTRY_PATH && gunicorn --log-level debug --debug -k gevent --max-requests 100 --graceful-timeout 120 -t 120 -b 0.0.0.0:$PORT_WWW -w 8 wsgi:application
EXPOSE 80