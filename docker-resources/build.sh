#!/bin/bash
#
# Rebuild script run in Dockerfile.
#
set -e

apt-get update
apt-get -y --no-install-recommends install python3 python3-pip
rm -rf /var/lib/apt/lists/*
