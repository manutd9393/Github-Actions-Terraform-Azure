terraform {
  backend "azurerm" {
    resource_group_name   = "tamopstfstates"
    storage_account_name  = "tamopstf9393"
    container_name        = "tfstatedevops"
    key                   = "cliworkspaces-terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}