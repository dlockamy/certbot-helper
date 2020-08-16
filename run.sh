#!/bin/bash
DOMAIN=$1
CERT_ROOT=$2
CURRENT_DIR=$(pwd)

docker build -t certbot-runner:latest .
docker run -it -v $CERT_ROOT:/etc/letsencrypt -v $CURRENT_DIR:/home -e "DOMAIN=$DOMAIN"  certbot-runner
