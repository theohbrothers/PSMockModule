# PSMockModule

[![badge-build-azuredevops-build-img][]][badge-build-azuredevops-build-src] [![badge-version-github-tag-img][]][badge-version-github-tag-src] [![badge-version-powershellgallery-releases-img][]][badge-version-powershellgallery-releases-src]

[badge-build-azuredevops-build-img]: https://img.shields.io/azure-devops/build/theohbrothers/PSMockModule/7/master.svg?label=build&logo=azure-pipelines&style=flat-square
[badge-build-azuredevops-build-src]: https://dev.azure.com/theohbrothers/PSMockModule/_build?definitionId=7
[badge-version-github-tag-img]: https://img.shields.io/github/v/tag/theohbrothers/PSMockModule?style=flat-square
[badge-version-github-tag-src]: https://github.com/theohbrothers/PSMockModule/releases
[badge-version-powershellgallery-releases-img]: https://img.shields.io/powershellgallery/v/PSMockModule?logo=powershell&logoColor=white&label=PSGallery&labelColor=&style=flat-square
[badge-version-powershellgallery-releases-src]: https://www.powershellgallery.com/packages/PSMockModule/

A mock powershell module for templating and reference.

## Installation

First, register [`PSGallery`](https://www.powershellgallery.com/) as a PowerShell repository:

```powershell
Register-PSRepository -Default
```

To install the module:

```powershell
# For the current user
Install-Module -Name PSMockModule -Repository PSGallery -Scope CurrentUser

# For all users
Install-Module -Name PSMockModule -Repository PSGallery -Scope AllUsers
```

## Usage

```powershell
# Runs Mock-Function1
Mock-Function1

# Runs Mock-Function2
Mock-Function2
```

## Administration

To import the module:

```powershell
# Import the installed version
Import-Module -Name PSMockModule -Force -Verbose

# Import the project version
Import-Module .\src\PSMockModule\PSMockModule.psm1 -Force -Verbose
```

To list all available functions:

```powershell
Get-Command -Module PSMockModule
```

To list all installed versions:

```powershell
Get-Module -Name PSMockModule -ListAvailable
```

To update the module:

```powershell
Update-Module -Name PSMockModule -Verbose
```
