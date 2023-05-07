$startTime = Get-Date

Write-Host "----- Setting Environment Variables -----"

$LOCATION = "westeurope"
$PREFIX = "quick"
$RG_NAME = "rg"
$AKS_NAME = "aks"

# $ENABLE_ADDONS="--enable-addons http_application_routing" # More addons here: https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-enable-addons
# $ENABLE_AZURE_RBAC="--enable-azure-rbac"
$KUBERNETES_VERSION = "1.25.6"
$MAX_COUNT = "3"
$MIN_COUNT = "1"
$NODE_COUNT = "1"
$NETWORK_PLUGIN = "azure"
$NODE_VM_SIZE = "Standard_B2s" # More sizes: https://learn.microsoft.com/en-us/azure/virtual-machines/sizes

Write-Host "----- Environment Variables Set -----"

Write-Host "----- Creating AKS Cluster -----"

az group create `
    --name "$PREFIX-$RG_NAME" `
    --location $LOCATION `

az aks create `
    --name "$PREFIX-$AKS_NAME" `
    --resource-group "$PREFIX-$RG_NAME" `
    --location $LOCATION `
    $ENABLE_ADDONS `
    $ENABLE_AZURE_RBAC `
    --enable-cluster-autoscaler `
    --generate-ssh-keys `
    --kubernetes-version $KUBERNETES_VERSION `
    --max-count $MAX_COUNT `
    --min-count $MIN_COUNT `
    --node-count $NODE_COUNT `
    --network-plugin $NETWORK_PLUGIN `
    --node-vm-size $NODE_VM_SIZE

$endTime = Get-Date

$elapsedTime = $endTime - $startTime

Write-Host "----- AKS Deployed in $($elapsedTime.TotalSeconds) -----"
