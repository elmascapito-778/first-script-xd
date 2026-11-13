Write-Host "Welcome to my calculator!"

while ($true) {
    Write-Host "Please enter the first number:"
    $num1 = Read-Host

    Write-Host "Please enter the second number:"
    $num2 = Read-Host

    Write-Host "Please choose an operation (+, -, *, /):"
    $operation = Read-Host

    switch ($operation) {
        "+" { $result = [double]$num1 + [double]$num2 }
        "-" { $result = [double]$num1 - [double]$num2 }
        "*" { $result = [double]$num1 * [double]$num2 }
        "/" {
            if ($num2 -eq 0) {
                Write-Host "Error: Division by zero is not allowed."
                continue
            } else {
                $result = [double]$num1 / [double]$num2
            }
        }
        default {
            Write-Host "Invalid operation. Please try again."
            continue
        }
    }

    Write-Host "The result is: $result"

    Write-Host "Do you want to perform another calculation? (y/n)"
    $continue = Read-Host
    if ($continue -ne 'y') {
        break
    }
}