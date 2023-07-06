#!/bin/bash
apt install update-manager-core

apt update && apt upgrade

do-release-upgrade

echo "System upgraded successfully"

exit 0
