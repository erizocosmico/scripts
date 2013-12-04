#!/bin/sh

# Install NGINX 1.4.X on Ubuntu 12.04
# http://www.danielmiessler.com/blog/upgrading-to-nginx-1-4-x-on-ubuntu
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
sudo echo 'deb http://nginx.org/packages/ubuntu/ precise nginx' >> /etc/apt/sources.list
sudo echo 'deb-src http://nginx.org/packages/ubuntu/ precise nginx' >> /etc/apt/sources.list
sudo apt-get update && sudo apt-get upgrade
sudo aptitude remove nginx-full and nginx-common
sudo aptitude install nginx
