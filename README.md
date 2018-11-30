# aks-rbac-aad-sample-terraform
A Terraform sample project to create an Azure Kubernetes Services with RBAC + Azure AD

### How to use it
Change the values in the secrets.tfvars and variables.tfvars for the values found in your Azure Service Principal and Azure Active Directory. Define a resource group name and the right location in variables.tfvars

### How to test it
Run in the command line the command below (make sure you have the latest Terraform binary at: https://www.terraform.io/downloads.html)
(It works on Terraform 0.11.10 and azure rm provider 1.19.0 or above)

terraform --version 

terraform plan

terraform apply

### How to configure Azure Active Directory and RBAC permissions on AKS

https://docs.microsoft.com/en-us/azure/aks/aad-integration

### More Documentation about Terraform and AKS

https://www.terraform.io/docs/providers/azurerm/r/kubernetes_cluster.html#role_based_access_control

https://docs.microsoft.com/en-us/azure/terraform/terraform-create-k8s-cluster-with-tf-and-aks?toc=%2Fen-us%2Fazure%2Faks%2FTOC.json&bc=%2Fen-us%2Fazure%2Fbread%2Ftoc.json
