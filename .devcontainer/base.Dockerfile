# Debian/Ubuntu-based image をもとにする 😊
FROM mcr.microsoft.com/vscode/devcontainers/base:buster

# [Option] zsh を入れる
ARG INSTALL_ZSH="true"
# [Option] OS packages を　Upgrade する
# https://github.com/microsoft/vscode-dev-containers/blob/v0.146.0/script-library/common-debian.sh#L129
ARG UPGRADE_PACKAGES="true"

# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
# 必要なpackagesを入れて、non-root userをセットアップする。
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# bicep release tags
ARG BICEP_RELEASE=latest

COPY library-scripts/*.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    # Install the Azure CLI
    && bash /tmp/library-scripts/azcli-debian.sh \
    # Install the powershell
    && bash /tmp/library-scripts/powershell-debian.sh \
    # Install the bicep
    && bash /tmp/library-scripts/bicep-debian.sh "${BICEP_RELEASE}" \
    # Clean up
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts
