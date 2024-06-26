# PSMockModule

[![azuredevops-build](https://img.shields.io/azure-devops/build/theohbrothers/PSMockModule/7/master.svg?label=build&logo=azure-pipelines&style=flat-square)](https://dev.azure.com/theohbrothers/PSMockModule/_build?definitionId=7)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/PSMockModule?style=flat-square)](https://github.com/theohbrothers/PSMockModule/releases)
[![powershellgallery-version](https://img.shields.io/powershellgallery/v/PSMockModule?logo=powershell&logoColor=white&label=PSGallery&labelColor=&style=flat-square)](https://www.powershellgallery.com/packages/PSMockModule)

## Introduction

A mock PowerShell module for templating and reference.

## Requirements

- [Windows PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell) or [PowerShell Core](https://github.com/powershell/powershell#-powershell).

## Installation

First, ensure [`PSGallery`](https://www.powershellgallery.com/) is registered as a PowerShell repository:

```powershell
Register-PSRepository -Default -Verbose
```

To install the module:

```powershell
# Latest, for the current user
Install-Module -Name PSMockModule -Repository PSGallery -Scope CurrentUser -Verbose

# Specific version, for the current user
Install-Module -Name PSMockModule -Repository PSGallery -RequiredVersion x.x.x -Scope CurrentUser -Verbose

# Latest, for all users
Install-Module -Name PSMockModule -Repository PSGallery -Scope AllUsers -Verbose
```

## Usage

### Functions

```powershell
Mock-Function1 [<CommonParameters>]
Mock-Function2 [<CommonParameters>]
```

To run Mock-Function1:

```powershell
Mock-Function1 -Verbose
```

To run Mock-Function2:

```powershell
Mock-Function2 -Verbose
```

To list all available functions of the module:

```powershell
Get-Command -Module PSMockModule
```

## Administration

### Versions

To list versions of the module on `PSGallery`:

```powershell
# Latest
Find-Module -Name PSMockModule -Repository PSGallery -Verbose

# All versions
Find-Module -Name PSMockModule -Repository PSGallery -AllVersions -Verbose
```

To update the module (**Existing versions are left intact**):

```powershell
# Latest
Update-Module -Name PSMockModule -Verbose

# Specific version
Update-Module -Name PSMockModule -RequiredVersion x.x.x -Verbose
```

To uninstall the module:

```powershell
# Latest
Uninstall-Module -Name PSMockModule -Verbose

# All versions
Uninstall-Module -Name PSMockModule -AllVersions -Verbose

# To uninstall all other versions other than x.x.x
Get-Module -Name PSMockModule -ListAvailable | ? { $_.Version -ne 'x.x.x' } | % { Uninstall-Module -Name $_.Name -RequiredVersion $_.Version -Verbose }

# Tip: Simulate uninstalls with -WhatIf
```

### Repositories

To get all registered PowerShell repositories:

```powershell
Get-PSRepository -Verbose
```

To set the installation policy for the `PSGallery` repository:

```powershell
# PSGallery (trusted)
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose

# PSGallery (untrusted)
Set-PSRepository -Name PSGallery -InstallationPolicy Untrusted -Verbose
```

### Development

To import / re-import the module:

```powershell
# Installed version
Import-Module -Name PSMockModule -Force -Verbose

# Project version
Import-Module .\src\PSMockModule\PSMockModule.psm1 -Force -Verbose
```

To remove imported functions of the module:

```powershell
Remove-Module -Name PSMockModule -Verbose
```

To list imported versions of the module:

```powershell
Get-Module -Name PSMockModule
```

To list all installed versions of the module available for import:

```powershell
Get-Module -Name PSMockModule -ListAvailable -Verbose
```
