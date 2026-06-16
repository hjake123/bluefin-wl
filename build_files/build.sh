#!/bin/bash

set -ouex pipefail

### Install packages

# Install the akmod-wl driver, copied in the Containerfile
echo "Building and installing Broadcom wl wireless drivers..."

echo "Enabling rpm fusion nonfree"

dnf5 install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Installing akmod-wl"

dnf5 install -y akmod-wl

echo "Cleaning up rpm fusion nonfree"

dnf5 uninstall -y rpmfusion-nonfree-release
