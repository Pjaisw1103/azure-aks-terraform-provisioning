variable "aks" {
  type = object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    default_node_pool = map(object({
      name       = string
      node_count = number
      vm_size    = string
    }))
    identity = map(object({
      type = string
    }))
  })
}
