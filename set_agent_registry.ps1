# Ensure the registry key path exists (optional, use if creating a new subkey)
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\WindowsAzureGuestAgent"
if (-not (Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set the registry property
Set-ItemProperty -Path $registryPath -Name "DependOnService" -Value "DNS" -Type MultiString -Force

# Note: The actual Path, Name, Value, and Type will depend on the specific setting you need to configure for the WindowsAzureGuestAgent.