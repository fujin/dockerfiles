#!/bin/bash
apt-key add /tmp/nginx_signing.key
apt-get update
apt-get install nginx -y
apt-get autoclean -y
