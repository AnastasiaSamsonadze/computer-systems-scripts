param (
    [string]$filePath
)

$names = Get-Content $filePath

foreach ($name in $names) {
    $nameParts = $name -split ' '
    
    $title = switch ($nameParts[0]) {
        "Mr" { "ur" }
        "Ms" { "holgy" }
        default { $nameParts[0] }
    }

    $formattedName = "$($nameParts[-1]) $($nameParts[1]) $title"
    Write-Output $formattedName
}
