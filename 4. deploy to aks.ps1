$aksClusterName = "ms-ds-demo-aks"
$aksResourceGroupName = "ms-ds-demo-rg"

az login

az aks get-credentials -n $aksClusterName -g $aksResourceGroupName --overwrite-existing

kubectl apply -f aks-deployment.yaml