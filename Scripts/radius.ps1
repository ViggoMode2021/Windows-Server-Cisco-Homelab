# Configure RADIUS/AAA server on Windows Server #

# Accounting ports = 1812,1645

# Authentication ports = 1813,1646

# Export-NpsConfiguration -Path

# Import-NpsConfiguration -Path

Install-WindowsFeature NPAS -IncludeManagementTools # Install Network Policy Server

$Radius_Name = Read-Host "Name for RADIUS host (router1, switch2 etc.)"

$IP_Address_Host = Read-Host "IP address for RADIUS host"

$Shared_Secret = Read-Host "Name of RADIUS shared secret"

$RADIUS_Args = @{
  Name = $Radius_Name
  Address = $IP_Address_Host
  SharedSecret = $Shared_Secret
  VendorName = "Cisco"
  Enabled = $True
}

Set-NpsRadiusClient @RADIUS_Args

New-ADGroup -Name "Radius-Users" -GroupCategory Security

# netsh nps set crp name = ("Use Windows authentication for all users") processingorder = "999999" conditionid = "0x1006"

# Remember to install NPS in Active Directory as well - not sure if this is doable via PowerShell