#!/bin/bash

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