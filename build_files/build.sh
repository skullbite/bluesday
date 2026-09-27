#!/bin/bash

set -ouex pipefail

cp -avf "/ctx/system_files"/. /

dnf -y remove plasma-discover firefox
dnf -y install tailscale steam gamescope @virtualization

dnf -y copr enable scujas/plasma-applet-appgrid
dnf -y install plasma-applet-appgrid
dnf -y copr disable scujas/plasma-applet-appgrid

dnf -y copr enable infinality/kwin-effects-better-blur-dx 
dnf -y install kwin-effects-better-blur-dx
dnf -y copr disable infinality/kwin-effects-better-blur-dx

# dnf -y copr enable ublue-os/packages
# dnf -y install bazaar
# dnf -y copr disable ublue-os/packages

dnf -y copr enable imput/helium
dnf -y install helium
dnf -y copr disable imput/helium

systemctl enable podman.socket
