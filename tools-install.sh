#!/usr/bin/env bash

# Note: This script assumes the machine is
# Ubuntu, and possesses "snap" capability.

###
# INSTALLING STUFF
###

###
# The older packages, we install the "normal" way.
###
apt install git \
            vim \
            curl;

###
# Any snap-capable things, we install as a snap.
###
snap install vscode \
             bitwarden \
             postman;
