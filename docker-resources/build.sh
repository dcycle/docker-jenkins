#!/bin/bash
#
# Rebuild script run in Dockerfile.
#
set -e

apt-get update
apt-get -y --no-install-recommends install python3 python3-pip
# https://docs.digitalocean.com/reference/doctl/how-to/install/
# Can't automatically get latest version due to
# https://stackoverflow.com/questions/78262083
LATEST=1.105.0
cd ~ && curl -LO "https://github.com/digitalocean/doctl/releases/download/v$LATEST/doctl-$LATEST-linux-amd64.tar.gz"
cd ~ && ls -lah && tar xf "doctl-$LATEST-linux-amd64.tar.gz"
mv ~/doctl /usr/local/bin
cd ~ && rm "doctl-$LATEST-linux-amd64.tar.gz"
rm -rf /var/lib/apt/lists/*

# see if python3 and doctl are installed
python3 --version
doctl version
