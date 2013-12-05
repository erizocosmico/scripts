#!/bin/sh

# Install rethinkdb
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:rethinkdb/ppa
sudo apt-get update > /dev/null
sudo apt-get install rethinkdb
sudo cp /etc/rethinkdb/default.conf.sample /etc/rethinkdb/instances.d/instance1.conf
sudo /etc/init.d/rethinkdb restart
