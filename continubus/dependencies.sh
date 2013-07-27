#!/bin/bash

apt-get update
apt-get install python-software-properties -y
apt-add-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install ruby rubygems ruby1.9.3 ruby-switch build-essential libxslt1-dev libxml2-dev unzip git-core -y
ruby-switch --set ruby1.9.1
gem install bundler
