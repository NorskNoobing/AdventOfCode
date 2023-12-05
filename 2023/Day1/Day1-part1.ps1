[array]$ScrambledValues = Get-Content "$PSScriptRoot/puzzleInput.txt"
[array]$NumberArr = $ScrambledValues -replace "[^0-9]",""
[int]$CalibrationSum = 0
$NumberArr.ForEach({
    [int]$CalibrationSum += [int]$([string]$_[0] + [string]$_[-1])
})
Write-Output $CalibrationSum