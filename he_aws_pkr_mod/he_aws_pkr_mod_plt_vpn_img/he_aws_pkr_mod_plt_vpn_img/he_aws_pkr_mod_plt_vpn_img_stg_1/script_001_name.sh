#!/usr/bin/env bash

# Copyright (c) 2020 - 2021 Adam Horden <adam.horden@horden.engineering>

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

set -o xtrace

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

export DEBIAN_FRONTEND="noninteractive"

/usr/bin/apt-get update
/usr/bin/apt-get upgrade --yes
/usr/bin/apt-get install --no-install-recommends --yes "awscli"
/usr/bin/apt-get install --no-install-recommends --yes "cloud-init"
/usr/bin/apt-get install --no-install-recommends --yes "curl"
/usr/bin/apt-get install --no-install-recommends --yes "jq"
/usr/bin/apt-get install --no-install-recommends --yes "libnss3-tools"
/usr/bin/apt-get install --no-install-recommends --yes "vim-nox"

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

systemctl enable cloud-final.service
systemctl enable cloud-init.service

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

cat >/etc/cloud/cloud.cfg <<EOL
#cloud-config
disable_root: true
EOL

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

cat >/etc/default/grub <<EOL
GRUB_CMDLINE_LINUX_DEFAULT="console=tty1 console=ttyS0,115200n8"
GRUB_DEFAULT=0
GRUB_TERMINAL=console
GRUB_TIMEOUT=0
EOL

grub-mkconfig -o /boot/grub/grub.cfg
