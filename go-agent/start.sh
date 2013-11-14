#!/bin/sh
. /etc/default/go-agent
chown -R go: /tmp

echo 127.0.0.1 $(hostname) > /etc/hosts

echo expects link alias 'go_server', echoing values into /etc/default/go-agent
env | grep GO_SERVER
echo starting go-agent

echo GO_SERVER=${GO_SERVER_PORT_8153_TCP_ADDR} >> /etc/default/go-agent
echo GO_SERVER_PORT=${GO_SERVER_PORT_8153_TCP_PORT} >> /etc/default/go-agent

/bin/su - go -c /usr/share/go-agent/agent.sh
