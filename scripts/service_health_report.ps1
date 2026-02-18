$services = Get-Service -Name DNS,NTDS,Netlogon

$services | Select-Object Name, Status, StartType |
Export-Csv ".\service_health.csv" -NoTypeInformation

Write-Output "Service health report exported."
