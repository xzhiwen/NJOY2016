# clean files
del inp\*, out\*

# copy ENDF data files
copy  ..\..\tests\resources\*  inp

# loop through case directories under test
foreach($caseDir in $(Get-ChildItem ..\..\tests\?? -Directory))
{
    $input = Join-Path $caseDir.FullName 'input'
    $caseInp = Join-Path 'inp' ('case' + $caseDir.BaseName + '.inp')
    if(Test-Path $input)
    {
        Write-Host 'copying', $input, 'to', $caseInp, '...' -foregroundcolor red -backgroundcolor yellow
        copy $input $caseInp
    }
    else
    {
        throw '$input not found.'
    }

    foreach($referenceTape in $(Get-ChildItem $caseDir -Filter referenceTape??))
    {
        $tapeNum = $referenceTape.BaseName.SubString($referenceTape.BaseName.Length - 2)
        $caseTape = Join-Path 'out' ('case' + $caseDir.BaseName + '.tape' + $tapeNum)
        Write-Host 'copying', $referenceTape.FullName, 'to', $caseTape
        copy $referenceTape.FullName $caseTape
    }
}
