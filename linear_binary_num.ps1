# Read array input
$numbers = Read-Host "Enter numbers separated by space"
$array = $numbers -split " " | ForEach-Object { [int]$_ }

$target = Read-Host "Enter the number to search for"

# Linear Search
$found = $false
for ($i = 0; $i -lt $array.Length; $i++) {
    if ($array[$i] -eq $target) {
        Write-Output "Linear Search: Found $target at position $($i + 1)"
        $found = $true
        break
    }
}
if (-not $found) {
    Write-Output "Linear Search: $target not found"
}

# Binary Search (requires sorted array)
$sorted = $array | Sort-Object
$low = 0
$high = $sorted.Length - 1
$found = $false

while ($low -le $high) {
    $mid = [math]::Floor(($low + $high) / 2)
    if ($sorted[$mid] -eq $target) {
        Write-Output "Binary Search: Found $target at position $($mid + 1) in sorted array"
        $found = $true
        break
    }
    elseif ($target -lt $sorted[$mid]) {
        $high = $mid - 1
    }
    else {
        $low = $mid + 1
    }
}
if (-not $found) {
    Write-Output "Binary Search: $target not found"
}