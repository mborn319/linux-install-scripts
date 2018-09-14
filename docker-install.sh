#!/usr/bin/env bash

###
# Install Docker
###
snap install docker;

# Docker group config; avoids docker permission error
# @cite https://askubuntu.com/questions/941816/permission-denied-when-running-docker-after-installing-it-as-a-snap
groupadd docker && usermod -a -G docker $USER && newgrp docker
