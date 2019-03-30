#!/bin/bash

# Exit if and error and special charater parameters as Erroe=r 
set -eu

# Docker Install scritp
sudo apt remove --yes docker docker-engine docker.io \
    && sudo apt update \
    && sudo apt --yes --no-install-recommends install \
        apt-transport-https \
        ca-certificates \
    && sudo apt-get install wget -y
# Use the official docker install script
sudo wget -qO- https://get.docker.com/ | sh

# Add docker User into Sudoers group
sudo apt update \
    && sudo usermod --append --groups docker "$USER" \
    && sudo systemctl enable docker \
    && printf '\nDocker installed successfully\n\n'

printf 'Waiting for Docker to start...\n\n'
sleep 4

# Docker Compose installation
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose \
	| grep refs/tags \
        | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" \
        | tail -n 1` \
     && sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose" \
     && sudo chmod +x /usr/local/bin/docker-compose \
     && sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"

# Install docker-cleanup command
cd /tmp \
    && git clone https://gist.github.com/76b450a0c986e576e98b.git \
    && cd 76b450a0c986e576e98b \
    && sudo mv docker-cleanup /usr/local/bin/docker-cleanup \
    && sudo chmod +x /usr/local/bin/docker-cleanup \
    && printf '\nDocker Compose installed successfully\n\n'

