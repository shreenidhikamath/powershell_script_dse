# Define arithmetic functions
function Add($a, $b) { return $a + $b }
function Subtract($a, $b) { return $a - $b }
function Multiply($a, $b) { return $a * $b }
function Divide($a, $b) {
    if ($b -ne 0) { return [math]::Round(($a / $b), 2) }
    else { return "Division by zero not allowed" }
}

# Read two integers and convert to int
$a = [int](Read-Host "Enter first number")
$b = [int](Read-Host "Enter second number")

# Display results
Write-Output "Addition: $(Add $a $b)"
Write-Output "Subtraction: $(Subtract $a $b)"
Write-Output "Multiplication: $(Multiply $a $b)"
Write-Output "Division: $(Divide $a $b)"