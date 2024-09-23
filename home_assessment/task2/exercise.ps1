param(
    [string[]]$WindowsFeatures,
    [string]$NewServerName
)

foreach ($feature in $WindowsFeatures) {
    Install-WindowsFeature -Name $feature -IncludeAllSubFeature
}

Rename-Computer -NewName $NewServerName -Force

Restart-Computer -Force
