#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo apt-get install docker-compose -y
sudo git clone https://github.com/luizeduardoraposo/web-dio-docker-compose-httpd.git
sudo cp -r web-dio-docker-compose-httpd/* -t ../
sudo docker-compose up -d