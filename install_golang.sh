#!/bin/sh

# Install the current golang version
# http://c2journal.com/2013/07/28/installing-go-1-1-on-ubuntu/
sudo apt-get update && sudo apt-get install gcc make mercurial git
cd /usr/local;
sudo hg clone -u release https://code.google.com/p/go go && \
cd go/src/
sudo ./all.bash
export PATH=$PATH:/usr/local/go/bin
export GOROOT=/usr/local/go
sudo mkdir /usr/local/go/packages
export GOPATH=/usr/local/go/packages
sudo echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile.d/envvar.sh;
sudo echo "export GOROOT=/usr/local/go" >> /etc/profile.d/envvar.sh;
sudo echo "export GOPATH=/usr/local/go/packages" >> /etc/profile.d/envvar.sh;
sudo chmod +x /etc/profile.d/envvar.sh;
