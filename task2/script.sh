#!/bin/bash

WEB_APP="$(curl -S ifconfig.me)"
sed -i "s/__WEB_APP__/$WEB_APP/" /home/ec2-user/proxy/conf
yum update -y
amazon-linux-extras install docker ansible2 -y
systemctl start docker
usermod -a -G docker ec2-user
newgrp docker
curl -SL https://github.com/docker/compose/releases/download/v2.14.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd /home/ec2-user/doctorly
docker-compose build
docker-compose up -d