param (
    [int]$firstNumber,
    [int]$secondNumber,
    [int]$thirdNumber
)

$sum = $secondNumber + $thirdNumber

if ($firstNumber -ne 0 -and $sum % $firstNumber -eq 0) {
    Write-Output "divisible"
} else {
    Write-Output "not divisible"
}

