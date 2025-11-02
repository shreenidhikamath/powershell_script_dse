# Script: SumOfNaturalNumbers.ps1
$n = Read-Host "Enter the value of N"
$sum = 0

for ($i = 1; $i -le $n; $i++) {
    $sum += $i
}

Write-Output "The sum of first $n natural numbers is $sum"
