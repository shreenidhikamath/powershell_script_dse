# Specify the file path
$filePath = "C:\Users\A\OneDrive\Powershellexample.txt"

# Check if the file exists
if (Test-Path $filePath) {
    Write-Output "The file '$filePath' exists."
    # Read the file content
    $fileContent = Get-Content $filePath
    Write-Output "`nFile Content:"
    Write-Output $fileContent
} else {
    Write-Output "The file '$filePath' does not exist."
    # Optionally create a new file
    New-Item -Path $filePath -ItemType File -Force
    Write-Output "A new file has been created at '$filePath'."
}