Clear-Host

#Set execution policy for modules in Powershell
Set-ExecutionPolicy RemoteSigned -Force
Write-Output "Setting Execution Policy to Remote Signed..."
Start-Sleep -Seconds 2

Write-Output "Installing modules... Please wait..."
Start-Sleep -Seconds 2

#Install module for Exchange Online for the current user
Get-InstalledModule -Name ExchangeOnlineManagement
if (Get-Module -ListAvailable -Name "ExchangeOnlineManagement")
{
    Write-Output "`nThe module Exchange Online is already installed`n`n"
}

else
{
    Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser -Force
}
Start-Sleep -Seconds 2

#Install module for AzureAD for the current user
Get-InstalledModule -Name AzureAD
if (Get-Module -ListAvailable -Name "AzureAD")
{
    Write-Output "`nThe module AzureAD is already installed`n`n"
}

else
{
    Install-Module -Name AzureAD -Scope CurrentUser -Force
}
Start-Sleep -Seconds 2

#Install module for GraphAPI Intune for the current user
Get-InstalledModule -Name AzureAD
if (Get-Module -ListAvailable -Name "Microsoft.Graph.Intune")
{
    Write-Output "`nThe module Microsoft.Graph.Intune is already installed`n`n"
}

else
{
    Install-Module -Name "Microsoft.Graph.Intune" -Scope CurrentUser -Force
}
Start-Sleep -Seconds 2

Write-Host "Completed!"
