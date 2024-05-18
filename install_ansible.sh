#!/bin/bash
sudo su
apt-get update -y

apt-get install python3.8 -y
apt-get install -y python3-pip

apt-get update -y
apt install software-properties-common -y
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install ansible -y
sudo apt install python3-boto3 -y


apt-get install git -y

apt  install awscli -y
curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
apt install unzip -y
unzip awscliv2.zip
./aws/install --update