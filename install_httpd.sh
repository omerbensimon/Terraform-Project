#! /bin/bash
sudo yum update
sudo amazon-linux-extras install docker
sudo service docker start

sudo docker run --name mynginx1 -p 80:80 -d nginx