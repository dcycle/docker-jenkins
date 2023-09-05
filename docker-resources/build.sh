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
rm -rf /var/lib/apt/lists/*
