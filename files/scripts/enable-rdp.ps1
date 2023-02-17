# Enable RDP connections to the remote/local machine
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0

# Enable RDP connections through the firewall
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
