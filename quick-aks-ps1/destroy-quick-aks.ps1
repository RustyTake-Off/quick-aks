$startTime = Get-Date

$PREFIX = "quick"
$RG_NAME = "rg"

Write-Host "----- Destroying AKS Cluster -----"

az group delete `
  --name "$PREFIX-$RG_NAME" `
  --yes

$endTime = Get-Date

$elapsedTime = $endTime - $startTime

Write-Host "----- AKS Destroyed in $($elapsedTime.TotalSeconds) -----"
