#!/bin/sh

sudo apt-get update -qq

# Adding PPAs
sudo apt-get install -q -y python-software-properties
sudo add-apt-repository -y ppa:chris-lea/zeromq
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:byobu/ppa
sudo apt-get update -qq

# Installing packages
sudo apt-get install -q -y curl
sudo apt-get install -q -y wget
sudo apt-get install -y -q python-dev
sudo apt-get install -y -q python-pip
sudo apt-get install -y -q build-essential
sudo apt-get install -y -q git
sudo apt-get install -y -q nodejs
sudo apt-get install -y -q vim
# Install ZMQ
sudo apt-get -y -q install libzmq3
# Install ZeroRPC
sudo apt-get install -y libevent-dev python-pip python-gevent msgpack-python
sudo pip install zerorpc

# oh my zsh
curl -L http://install.ohmyz.sh | sh
echo 'export LC_ALL="en_US.UTF8"' >> ~/.zshrc

# git configs
git config --global user.email stanleygu@gmail.com
git config --global user.name "Stanley Gu"
git config --global credential.helper cache