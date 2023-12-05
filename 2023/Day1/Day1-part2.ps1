[array]$ScrambledValues = Get-Content "$PSScriptRoot/puzzleInput.txt"
$NumberReplacementHashtable = @{
    "one" = "o1e"
    "two" = "t2o"
    "three" = "t3e"
    "four" = "f4r"
    "five" = "f5e"
    "six" = "s6x"
    "seven" = "s7n"
    "eight" = "e8t"
    "nine" = "n9e"
}
$NumberReplacementHashtable.keys.ForEach({
    [array]$ScrambledValues = $ScrambledValues -replace "$_",$NumberReplacementHashtable.$_
})
[array]$NumberArr = $ScrambledValues -replace "[^0-9]",""
[int]$CalibrationSum = 0
$NumberArr.ForEach({
    [int]$CalibrationSum += [int]$([string]$_[0] + [string]$_[-1])
})
Write-Output $CalibrationSum