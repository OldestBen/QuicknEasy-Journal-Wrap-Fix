# Stop the FRS service
net stop ntfrs

# Open the Registry Editor and navigate to the specified key
$registryPath = "HKLM:\System\CurrentControlSet\Services\NtFrs\Parameters\Backup/Restore\Process at Startup"

# Check if the path exists and then modify the BurFlags value
if (Test-Path $registryPath) {
    Set-ItemProperty -Path $registryPath -Name "BurFlags" -Value 0xD2
} else {
    Write-Host "Registry path does not exist."
}

# Restart the FRS service
net start ntfrs
