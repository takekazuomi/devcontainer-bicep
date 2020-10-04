---
title: Bicep dev container template
---

## Installed

- golang 1.15
- bicep
- powershell
- az cli

## installed vs code plugin

- golang.Go
- ms-azuretools.vscode-docker
- ms-vscode.azure-account
- davidanson.vscode-markdownlint
- ms-vscode.powershell
- dandric.vscode-jq
- redhat.vscode-yaml
- dotjoshjohnson.xml
- timonwong.shellcheck
- lfs.vscode-emacs-friendly

## TODO

I don't know how to install VS Code extension from the command line in dev-container.

[Install the Bicep VS Code extension Via command line (Windows PowerShell)](https://github.com/Azure/bicep/blob/master/docs/installing.md#via-command-line-linux--macos)

```shell
# Fetch the latest Bicep VSCode extension
curl -Lo vscode-bicep.vsix https://github.com/Azure/bicep/releases/latest/download/vscode-bicep.vsix
# Install the extension
code --install-extension vscode-bicep.vsix
# Clean up the file
rm vscode-bicep.vsix
# Done!
 ```
