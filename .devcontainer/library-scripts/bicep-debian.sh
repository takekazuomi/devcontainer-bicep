#!/usr/bin/env bash
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Takekazu Omi. All rights reserved.
# Licensed under the MIT License. See https://opensource.org/licenses/mit-license.php for license information.
#-------------------------------------------------------------------------------------------------------------
# The major design pattern of this plugin was abstracted from Microsoft Corporation, which is subject to the same license.
# Here is the original copyright notice for Microsoft Corporation:
#
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

BICEP_RELEASE=${1:-"latest"}

set -e

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive

# Install curl, apt-transport-https, lsb-release, or gpg if missing
if ! dpkg -s apt-transport-https curl ca-certificates lsb-release > /dev/null 2>&1 || ! type gpg > /dev/null 2>&1; then
    if [ ! -d "/var/lib/apt/lists" ] || [ "$(ls /var/lib/apt/lists/ | wc -l)" = "0" ]; then
        apt-get update
    fi
    apt-get -y install --no-install-recommends apt-transport-https curl ca-certificates lsb-release gnupg2
fi

apt-get update -yq
apt-get install -yq xz-utils make

# install shellcheck
# https://github.com/koalaman/shellcheck#installing-a-pre-compiled-binary
scversion="stable" # or "v0.4.7", or "latest"
wget -qO- "https://github.com/koalaman/shellcheck/releases/download/${scversion?}/shellcheck-${scversion?}.linux.x86_64.tar.xz" | tar -xJv
cp "shellcheck-${scversion}/shellcheck" /usr/bin/
shellcheck --version

# Install the Bicep CLI
# https://github.com/Azure/bicep/blob/master/docs/installing.md#install-the-bicep-cli

# curl -Lo bicep https://github.com/Azure/bicep/releases/latest/download/bicep-linux-x64
curl -Lo bicep https://github.com/Azure/bicep/releases/download/${BICEP_RELEASE}/bicep-linux-x64
chmod +x ./bicep
mv ./bicep /usr/local/bin/bicep
bicep --help

# Fetch the latest Bicep VSCode extension
curl -Lo /tmp/vscode-bicep.vsix https://github.com/Azure/bicep/releases/download/${BICEP_RELEASE}/vscode-bicep.vsix

echo "Done!"
