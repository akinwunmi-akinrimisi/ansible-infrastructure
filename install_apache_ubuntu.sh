#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Hello World from $(hostname -f) cloudboosta" | sudo tee /var/www/html/index.html


