export start_time=$(date +%s)

. ./env-vars.sh

echo "----- Creating AKS Cluster -----"

az group create \
    --name "$PREFIX-$RG_NAME" \
    --location $LOCATION

az aks create \
    --name "$PREFIX-$AKS_NAME" \
    --resource-group "$PREFIX-$RG_NAME" \
    --location $LOCATION \
    $ENABLE_ADDONS \
    $ENABLE_AZURE_RBAC \
    --enable-cluster-autoscaler \
    --generate-ssh-keys \
    --kubernetes-version $KUBERNETES_VERSION \
    --max-count $MAX_COUNT \
    --min-count $MIN_COUNT \
    --node-count $NODE_COUNT \
    --network-plugin $NETWORK_PLUGIN \
    --node-vm-size $NODE_VM_SIZE

export end_time=$(date +%s)

export elapsed_time=$(($end_time - $start_time))

echo "----- AKS Destroyed in $(($elapsed_time / 60)):$(($elapsed_time % 60)) -----"