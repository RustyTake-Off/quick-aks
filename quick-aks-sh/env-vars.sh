echo "----- Setting Environment Variables -----"

export LOCATION=westeurope
export PREFIX=quick
export RG_NAME=rg
export AKS_NAME=aks

# export ENABLE_ADDONS="--enable-addons http_application_routing" # More addons here: https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-enable-addons
# export ENABLE_AZURE_RBAC="--enable-azure-rbac"
export KUBERNETES_VERSION="1.25.6"
export MAX_COUNT=3
export MIN_COUNT=1
export NODE_COUNT=1
export NETWORK_PLUGIN=azure
export NODE_VM_SIZE=Standard_B2s # More sizes: https://learn.microsoft.com/en-us/azure/virtual-machines/sizes

echo "----- Environment Variables Set -----"