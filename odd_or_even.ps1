# Read input from user
$number = Read-Host "Enter any integer value"

# Convert to integer
$number = [int]$number

if($number % 2 -eq 0){
    Write-Host "The number $number is EVEN"
}
else{
    Write-Host "The number $number is ODD"
}
