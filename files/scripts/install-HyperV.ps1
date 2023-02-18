Add-WindowsCapability -Online -Name Rsat.ServerManager.Tools~~~~0.0.1.0

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart
