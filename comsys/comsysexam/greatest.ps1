$maxNumber = $args[0];
foreach ($arg in $args) {
    if ($arg -gt $maxNumber) {
        $maxNumber = $arg
    }
 
 }

 Write-Host $maxNumber
