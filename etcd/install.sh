#!/bin/sh

# Install etcd
export INSTALL_DIR=/etcd
mkdir -p $INSTALL_DIR
cd $INSTALL_DIR
export GOPATH=`pwd`
go get github.com/coreos/etcd
go install github.com/coreos/etcd
