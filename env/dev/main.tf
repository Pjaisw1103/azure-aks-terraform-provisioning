module "resource_group" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}

module "acr" {
  depends_on = [module.resource_group]
  source     = "../../modules/acr"
  acr        = var.acr
}

module "aks" {
  depends_on = [module.resource_group]
  source     = "../../modules/aks"
  aks        = var.aks
}

