# Kubernetes intro with AKS

## Prerequisites
### Standard way of doing things
- Make sure that you have access to Altius Internal Azure subscription. 
- Install Azure CLI.
- Run the following command: `az aks install-cli`.

If you don't have access to Azure subscription or you don't want to install Azure CLI, you can do it a 'hacky' way. 

### "Hacky" way
- Install `kubectl` as described here: `https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-windows`
- Add file `config` from the email attachment into `c:\Users\<YourUserName>\.kube` folder.
  