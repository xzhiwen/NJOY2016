$caseBaseName = $((Get-Item -Path $MyInvocation.MyCommand.Path).BaseName)
Push-Location (Split-Path $MyInvocation.MyCommand.Path)

python -u -m nepr.run_tests --yaml baseline.yaml | Set-Content -Path "$caseBaseName.log" -Encoding ASCII -PassThru

Pop-Location
