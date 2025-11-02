# Read input from user
$number = Read-Host "Enter any integer value"

# Convert to integer
$number = [int]$number

if($number -gt 0){
    Write-Host "The number is Positive"
}
elseif($number -lt 0){
    Write-Host "The number is Negative"
}
else{
    Write-Host "The number is Zero"
}
