#Set execution policy for modules in Powershell
Set-ExecutionPolicy RemoteSigned -Force

#Install module for Exchange Online for the current user
Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser -Force

#Install module for AzureAD for the current user
Install-Module -Name AzureAD -Scope CurrentUser -Force

#Install module for GraphAPI Intune for the current user
Install-Module -Name Microsoft.Graph.Intune -Scope CurrentUser -Force
