rgs = {
  rg1 = {
    name     = "rg-axion-dev"
    location = "eastus"
    tags = {
      environment = dev
    }
  }
}

acr = {
  acr1 = {
    name                = "acr-axion"
    location            = "eastus"
    resource_group_name = "rg-axion-dev"
    sku                 = "Standard"
  }
}

aks = {
  aks1 = {
    name                = "aks-axion-dev"
    location            = "eastus"
    resource_group_name = "rg-axion-dev"
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

