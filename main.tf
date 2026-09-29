module "resource_group" {
  source = "../child_module/resource_group"

  rgs = var.rgs
}

module "storage_account" {
  source = "../child_module/storage_account"

  storage_account = var.storage_account

  depends_on = [
    module.resource_group
  ]
}