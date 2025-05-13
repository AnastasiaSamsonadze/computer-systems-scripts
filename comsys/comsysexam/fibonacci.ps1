param (
    [int]$numElements
)

if ($numElements -le 0) {
    Write-Output "Please provide a positive integer greater than 0."
} else {
    $fibonacci = @(0, 1)

    for ($i = 2; $i -lt $numElements; $i++) {
        $fibonacci += $fibonacci[$i - 1] + $fibonacci[$i - 2]
    }

    $fibonacci -join ' '
}
