rgs = {
  rg1 = {
    name     = "rg-axion-preprod"
    location = "eastus"
    tags = {
      environment = preprod
    }
  }
}

acr = {
  acr1 = {
    name                = "acr-axion"
    location            = "eastus"
    resource_group_name = "rg-axion-preprod"
    sku                 = "Standard"
  }
}

aks = {
  aks1 = {
    name                = "aks-axion-preprod"
    location            = "eastus"
    resource_group_name = "rg-axion-preprod"
    dns_prefix          = "value"
    default_node_pool = {
      name       = "default"
      node_count = 2
      vm_size    = "Standard_D2s_v3"
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}

