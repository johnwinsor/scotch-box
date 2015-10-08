#!/usr/bin/env bash

sudo apt-get update

sudo apt-get -y install curl
sudo apt-get -y install zsh

sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

### Set Up ZSH
if [ ! -d ~vagrant/.oh-my-zsh  ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~vagrant/.oh-my-zsh
fi

chown -R vagrant: ~vagrant/.oh-my-zsh

### Create a new zsh configuration from the provided template
cp /vagrant/.zshrc ~vagrant/.zshrc

### Customize zsh theme
#sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="agnoster"/' ~vagrant/.zshrc

### Change ownership of .zshrc
chown vagrant: ~vagrant/.zshrc

### Install Ruby from rbenv
#rbenv install -v 2.2.2

### Set zsh as default shell
chsh -s /bin/zsh vagrant

### Install java
sudo apt-get -y install openjdk-7-jdk

### Get FITS
#wget http://projects.iq.harvard.edu/files/fits/files/fits-0.6.2.zip


echo "gem: --no-document" > ~/.gemrc

# cleanup
sudo apt-get clean
