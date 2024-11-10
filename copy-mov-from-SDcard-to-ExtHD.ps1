# Right-click on the Start button and select "Windows PowerShell (Admin)"
# Get-ExecutionPolicy
# Set-ExecutionPolicy RemoteSigned
# 

# Define the date variable
# All moview copied from SD Drive to //TP-Share as of 10/30/24
# 
$datevariable = ".\datevariable.txt"
$modifiedAfterDate = Get-Content -Path $datevariable
Invoke-Expression $modifiedAfterDate

# Define the source and destination directories
# $sourceDirectory = "C:\Source"
# $sourceDirectory = "C:\Users\cruel\OneDrive\Pictures\D3100\Compressed"
$sourceDirectory = "E:\DCIM\100D3100"

# $destinationDirectory = "C:\Users\cruel\OneDrive\Pictures\test"
# $destinationDirectory = "C:\Destination"
$destinationDirectory = "G:\NikonD3100\MOV"

# Get all files modified after the specified date
$filesToCopy = Get-ChildItem -Path $sourceDirectory -Recurse | 
Where-Object { $_.LastWriteTime -gt $modifiedAfterDate  -and $_.Extension -eq ".MOV" }

# Copy each file to the destination directory
foreach ($file in $filesToCopy) {
    Copy-Item -Path $file.FullName -Destination $destinationDirectory
}

Write-Output "Files copied successfully."
