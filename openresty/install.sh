#!/bin/sh
apt-get update
apt-get install build-essential libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make -y

echo $VERSION
echo $FILENAME

mkdir -p ${UNPACK_DIRECTORY}
cd /tmp
tar zxf $FILENAME --strip-components=1 -C ${UNPACK_DIRECTORY}

# Seriously?
cd ${UNPACK_DIRECTORY}
./configure --with-luajit --prefix=${INSTALL_DIRECTORY}
make
make install
