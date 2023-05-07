export start_time=$(date +%s)

echo "----- Destroying AKS Cluster -----"

. ./env-vars.sh

az group delete \
  --name "$PREFIX-$RG_NAME" \
  --yes

export end_time=$(date +%s)

export elapsed_time=$(($end_time - $start_time))

echo "----- AKS Destroyed in $(($elapsed_time / 60)).$(($elapsed_time % 60)) -----"
