#!/bin/bash
sudo yum update -y
sudo yum install python3-pip
sudo amazon-linux-extras install docker -y
sudo systemctl enable docker.service
sudo service docker start
sudo usermod -a -G docker ec2-user

sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
