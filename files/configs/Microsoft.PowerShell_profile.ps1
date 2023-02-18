function Get-Permissions ($folder) {
(get-acl $folder).access | select `
        @{Label="Identity";Expression={$_.IdentityReference}}, `
        @{Label="Right";Expression={$_.FileSystemRights}}, `
        @{Label="Access";Expression={$_.AccessControlType}}, `
        @{Label="Inherited";Expression={$_.IsInherited}}, `
        @{Label="Inheritance Flags";Expression={$_.InheritanceFlags}}, `
        @{Label="Propagation Flags";Expression={$_.PropagationFlags}} | ft -auto
}

function sudo {
        Start-Process -Verb runas powershell.exe
}
