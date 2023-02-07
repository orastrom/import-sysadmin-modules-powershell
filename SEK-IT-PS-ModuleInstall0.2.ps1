#Set execution policy for modules in Powershell
Set-ExecutionPolicy RemoteSigned -Force

#Install module for Exchange Online for the current user
Get-InstalledModule -Name ExchangeOnlineManagement
if (Get-Module -ListAvailable -Name "ExchangeOnlineManagement")
{
    Write-Output "The module Exchange Online is already installed"
}

else
{
    Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser -Force
}


#Install module for AzureAD for the current user
Get-InstalledModule -Name AzureAD
if (Get-Module -ListAvailable -Name "AzureAD")
{
    Write-Output "The module AzureAD is already installed"
}

else
{
    Install-Module -Name AzureAD -Scope CurrentUser -Force
}


#Install module for GraphAPI Intune for the current user
Get-InstalledModule -Name AzureAD
if (Get-Module -ListAvailable -Name "Microsoft.Graph.Intune")
{
    Write-Output "The module Microsoft.Graph.Intune is already installed"
}

else
{
    Install-Module -Name "Microsoft.Graph.Intune" -Scope CurrentUser -Force
}