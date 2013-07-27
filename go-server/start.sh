#!/bin/sh
. /etc/default/go-agent
/bin/su - go -c /usr/share/go-server/server.sh
