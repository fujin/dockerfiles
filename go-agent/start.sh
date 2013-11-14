#!/bin/sh
. /etc/default/go-agent
chown -R go: /tmp
echo 127.0.0.1 $(hostname) > /etc/hosts
echo "expects link alias 'go_server', echoing"
env | grep GO_SERVER
echo "starting go-agent"
export GO_SERVER=${GO_SERVER_PORT_8153_TCP_ADDR}
export GO_SERVER_PORT=${GO_SERVER_PORT_8153_TCP_PORT}

/bin/su - go -c /usr/share/go-agent/agent.sh
