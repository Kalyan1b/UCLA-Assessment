Invoke-RestMethod -Method Get -Uri "https://datausa.io/api/data?drilldowns=State&measures=Population" -OutFile out.json
$data = Get-Content out.json | ConvertFrom-Json
$data.data | Export-Csv -NoTypeInformation population_data.csv