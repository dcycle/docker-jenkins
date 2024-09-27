#!/bin/bash
#
# Rebuild script run in Dockerfile.
#
set -e

# https://stackoverflow.com/questions/68992799
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6ED0E7B82643E131
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F8D2585B8783D481
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BDE6D2B9216EC7A8
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
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
