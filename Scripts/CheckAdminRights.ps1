## Author: lehag
## Code: CheckAdminRights.ps1

$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))) {
    Write-Host "You are running as the administrator."
    Exit 1
}

Write-Host "This script needs to be running as the administrator."
