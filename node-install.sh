#!/usr/bin/env bash

###
# Install NPM and Node
# Note, these are older versions! There are better ways to install npm/node.
###
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install -y nodejs

# Now install global npm packages
npm -g install gulp
