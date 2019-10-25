[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$VerbosePreference = 'Continue'
$global:PesterDebugPreference_ShowFullErrors = $true

# Install test dependencies
"Installing test dependencies" | Write-Host
& "$PSScriptRoot\Install-TestDependencies.ps1"

# Run unit tests
"Running unit tests" | Write-Host
$testFailed = $false
$result = Invoke-Pester -Script "$PSScriptRoot\..\src\PSMockModule" -PassThru
if ($result.FailedCount -gt 0) {
    "$($result.FailedCount) tests failed."
    $testFailed = $true
}

# Run integration tests
"Running integration tests" | Write-Host
& "$PSScriptRoot\Run-IntegrationTests.ps1"

if ($testFailed) {
    throw
}
