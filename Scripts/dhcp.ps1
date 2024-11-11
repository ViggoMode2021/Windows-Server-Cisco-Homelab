# Configure DHCP Server on Windows Server #

Install-WindowsFeature DHCP

$DHCP_Scope_Args = @{
  Name = "Clients"
  StartRange = 10.10.10.2
  EndRange = 10.10.10.254
  SubnetMask = 255.255.255.0
  State = "Active"
}

Add-DhcpServerv4Scope @DHCP_Scope_Args

Set-DHCPServerv40OptionValue -ScopeID 10.10.10.0 -Router 10.10.10.1

