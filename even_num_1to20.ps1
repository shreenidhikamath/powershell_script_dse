# Print even numbers from 1 to 20
for ($i = 1; $i -le 20; $i++) {
    if ($i % 2 -eq 0) {
        Write-Output $i
    }
}