# Bicep dev container

## Summary

*Debian container with the Bicep, related extensions, and dependencies.*

| Metadata | Value |
|----------|-------|
| *Contributors* | Takekazu Omi |
| *Definition type* | Dockerfile |
| *Works in Codespaces* | Yes |
| *Container host OS support* | Linux, macOS, Windows |
| *Languages, platforms* | Azure |

## Using this definition with an existing folder

About bicep, you can get information from [bicep](https://github.com/Azure/bicep).

This definition requires an Azure subscription to use. You can create a [free account here](https://azure.microsoft.com/en-us/free/). Once you have an Azure account, follow these steps:

1. If this is your first time using a development container, please follow the [getting started steps](https://aka.ms/vscode-remote/containers/getting-started) to set up your machine.

2. To use latest-and-greatest copy of this definition from the repository:
   1. Clone this repository.
   2. Copy the contents of `containers/azure-cli/.devcontainer` to the root of your project folder.
   3. Start VS Code and open your project folder.

3. After following step 2, the contents of the `.devcontainer` folder in your project can be adapted to meet your needs.

4. Finally, press <kbd>F1</kbd> and run **Remote-Containers: Reopen Folder in Container** to start using the definition.

## Installed binaries

- bicep
- powershell
- az cli

## Installed VS Code plugin

- ms-azuretools.vscode-docker
- ms-vscode.azure-account
- davidanson.vscode-markdownlint
- ms-vscode.powershell
- dandric.vscode-jq
- redhat.vscode-yaml
- dotjoshjohnson.xml
- timonwong.shellcheck
- editorconfig.editorconfig
- vscode-bicep.vsix

## ChangeLog

- [v0.5.6](https://github.com/Azure/bicep/releases/tag/v0.5.6) Bicep Public Registry
- [v0.4.1272](https://github.com/Azure/bicep/releases/tag/v0.4.1272) ACA support.
- [v0.4.1124](https://github.com/Azure/bicep/releases/tag/v0.4.1124)
- [v0.4.1008](https://github.com/Azure/bicep/releases/tag/v0.4.1008) Private Module registry, Implement TemplateSpec module referencesand more.
- [v0.4.613](https://github.com/Azure/bicep/releases/tag/v0.4.613) Implement goto for resource and variable property accesses, module paths, params and outputs.
- [v0.4.451](https://github.com/Azure/bicep/releases/tag/v0.4.451) Hotfix to remove the build summary.
- [v0.4.412](https://github.com/Azure/bicep/releases/tag/v0.4.412) support stg.listKeys(). JSON literal string conversion. local json templates as modules.
- v0.4.1 linter MVP
- v0.3.255 var loop support
- v0.3.126 Improvements to child resource declarations, Loop enhancements
- v0.3.1 bicep v0.3.1 loop support
- v0.0.9 bicep v0.2.212  conditional resources support
- v0.0.7 install GNU make
- v0.0.6 bicep v0.2.14 module support
- v0.0.5 bicep v0.1.226
- v0.0.4 bicep v0.1.37

## License

Copyright (c) Takekazu Omi. All rights reserved.

Licensed under the MIT License. See https://opensource.org/licenses/mit-license.php for license information.

The major design pattern of this plugin was abstracted from Microsoft Corporation, which is subject to the same license.

Here is the original copyright notice for Microsoft Corporation:

Copyright (c) Microsoft Corporation. All rights reserved.

Licensed under the MIT License. See [LICENSE](https://github.com/Microsoft/vscode-dev-containers/blob/master/LICENSE).

