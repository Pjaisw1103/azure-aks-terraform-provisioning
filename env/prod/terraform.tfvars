rgs = {
    rg1 = {
        name = "rg-axion-prod"
        location = "eastus"
        tags = {
            environment = prod
        }
    }
}

acr = {
    acr1 = {
        name = "acr-axion"
        location = "eastus"
        resource_group_name = "rg-axion-prod"
        sku = "Standard"
    }
}

aks = {
  aks1 = {
    name = "aks-axion-prod"
    location = "eastus"
    resource_group_name = "rg-axion-prod"
    dns_prefix = "value"
    default_node_pool = {
      name = "default"
      node_count = 2
      vm_size = "Standard_D2s_v3"
    }
    identity = {
        type = "SystemAssigned"
    }
  }
}

