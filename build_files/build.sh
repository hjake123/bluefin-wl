#!/bin/bash

set -ouex pipefail

### Install packages

# Install the akmod-wl driver, copied in the Containerfile
echo "Installing Broadcom wl wireless drivers..."

echo "Active kernel is:"
rpm -q kernel-core

echo "Driver files include:"
find /opt/akmods-rpms -type f | sort


dnf5 install -y \
    /opt/akmods-rpms/common/broadcom-wl-*.rpm \
    /opt/akmods-rpms/kmods/kmod-wl-*.rpm

# Cleanup rpms
rm -rf /opt/akmods-rpms
