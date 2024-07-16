# Display a warning message
Write-Host "WARNING: Authoritative restores should only be used as a last resort to resolve issues like directory collisions."
Write-Host "Ensure you have a backup of the registry before making changes, as incorrect modifications can cause system instability."

# Prompt for user confirmation
$confirmation = Read-Host "If you understand the risks and have taken the necessary backup, type 'YES' to continue"
if ($confirmation -ne 'YES') {
    Write-Host "User did not confirm. Exiting script."
    exit
}

# Stop the FRS service
Write-Host "Stopping the File Replication Service (FRS)..."
net stop ntfrs

# Open the Registry Editor and navigate to the specified key
$registryPath = "HKLM:\System\CurrentControlSet\Services\NtFrs\Parameters\Backup/Restore\Process at Startup"
$burFlagsValue = "D4"

# Check if the registry path exists
if (Test-Path $registryPath) {
    # Modify the BurFlags DWORD value
    Write-Host "Setting the 'BurFlags' DWORD value to D4..."
    Set-ItemProperty -Path $registryPath -Name "BurFlags" -Value $burFlagsValue
} else {
    Write-Host "Registry path does not exist. Exiting script."
    exit
}

# Restart the FRS service
Write-Host "Starting the File Replication Service (FRS)..."
net start ntfrs

Write-Host "The script has completed."
