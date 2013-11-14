#!/bin/bash
echo deb http://archive.ubuntu.com/ubuntu precise main universe multiverse > /etc/apt/sources.list
apt-get update
apt-get install ruby1.9.1-dev rubygems build-essential libxslt1-dev libxml2-dev unzip git-core automake libtool -y
gem1.9.1 install bundler
mkdir -p /var/cache/omnibus
chown -R go: /var/cache/omnibus
chown -R go: /opt
