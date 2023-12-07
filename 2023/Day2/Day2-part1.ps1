param (
    [int]$RedCubes = 12,
    [int]$GreenCubes = 13,
    [int]$BlueCubes = 14
)

[array]$GameList = Get-Content "$PSScriptRoot/puzzleInput.txt"
$ParsedInputArr = New-Object -TypeName System.Collections.ArrayList

$GameList.ForEach({
    [int]$GameId = ($_ -replace "(Game )|(:.*)","")
    [array]$SubGames = ($_ -split ";" -split ":").Where({$_ -notlike "*game*"}).Trim()

    $SubGames.ForEach({
        
    })
})

#todo: parse inputs, for each subgame and store them together with the GameId
#todo: Check if subgame could work. If it doesn't work, then add the GameId to the exclusionlist
#todo: remove the rest of the entries with the same GameId if one of the subgames doesn't work