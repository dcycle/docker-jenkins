#!/bin/bash
#
# Rebuild script run in Dockerfile.
#
set -e

apt-get update
apt-get -y --no-install-recommends install python3
rm -rf /var/lib/apt/lists/*
