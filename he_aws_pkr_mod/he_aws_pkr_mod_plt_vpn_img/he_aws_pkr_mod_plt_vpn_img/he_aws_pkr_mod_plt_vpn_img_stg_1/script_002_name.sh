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

mkdir -p \
  /etc/he

cat >/etc/he/md.sh <<'EOL'
#!/usr/bin/env bash

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

#

set -o xtrace

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

PTH_EC2=$(printf "/etc/he/ec2")

rm -rf "${PTH_EC2}"

if [ ! -d "${PTH_EC2}" ]; then
   mkdir -m 0700 -p "${PTH_EC2}"
fi

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

PTH_SSH=$(printf "/home/he/.ssh")

rm -rf "${PTH_SSH}"

if [ ! -d "${PTH_SSH}" ]; then
   mkdir -m 0700 -p "${PTH_SSH}"
fi

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

PTH_SSH_KEY=$(printf "%s/public_keys_0_openssh_key" "${PTH_EC2}")

/bin/curl \
  --output \
  "${PTH_SSH_KEY}" \
  http://169.254.169.254/1.0/meta-data/public-keys/0/openssh-key

if [ -s "${PTH_SSH_KEY}" ]; then

  cat \
    "${PTH_SSH_KEY}" >> \
    "$(printf "%s/authorized_keys" "${PTH_SSH}")"

  chmod \
    "600" \
    "$(printf "%s/authorized_keys" "${PTH_SSH}")"

  chown \
    --recursive \
    "he:he" \
    "$(printf "%s" "${PTH_SSH}")"

fi

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

PTH_HN=$(printf "%s/hostname" "${PTH_EC2}")

/bin/curl \
  --output \
  "${PTH_HN}" \
  http://169.254.169.254/1.0/meta-data/hostname

if [ -s "${PTH_HN}" ]; then

  /bin/hostname \
    $(cat "${PTH_HN}")

fi

EOL

chmod \
  +x \
  /etc/he/md.sh

# ----------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------

cat >/etc/systemd/system/he.service <<EOL
[Install]
WantedBy=multi-user.target

[Service]
ExecStart=/etc/he/md.sh
RemainAfterExit=yes
Type=oneshot

[Unit]
After=network.target
Before=sshd.service
Description=HE EC2

EOL

systemctl enable he.service
systemctl status he.service || true
