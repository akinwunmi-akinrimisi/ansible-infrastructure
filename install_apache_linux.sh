#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "Hello World from $(hostname -f) cloudboosta" | sudo tee /var/www/html/index.html