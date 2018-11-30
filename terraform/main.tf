resource "azurerm_resource_group" "cg-rg" {
  name     = "${var.app_rg_name}"
  location = "${var.location}"
}
resource "azurerm_kubernetes_cluster" "cgaks" {
  name                = "cgaks"
  location            = "${azurerm_resource_group.cg-rg.location}"
  resource_group_name = "${azurerm_resource_group.cg-rg.name}"
  dns_prefix          = "cgrgrbactest"
  
  #See this documentation to learn how to insert the write information: https://docs.microsoft.com/en-us/azure/aks/aad-integration
  role_based_access_control	{

    azure_active_directory{

      client_app_id = "${var.client_app_id}"
      server_app_id = "${var.server_app_id}"
      server_app_secret = "${var.server_app_secret}"
      tenant_id = "${var.aad_tenant_id}"
      
    }

  }

  agent_pool_profile {
    name            = "default"
    count           = 1
    vm_size         = "Standard_D1_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = "${var.client_id}"
    client_secret = "${var.client_secret}"
  }

  tags {
    Environment = "Production"
  }
}

output "client_certificate" {
  value = "${azurerm_kubernetes_cluster.cgaks.kube_config.0.client_certificate}"
}

output "kube_config" {
  value = "${azurerm_kubernetes_cluster.cgaks.kube_config_raw}"
}