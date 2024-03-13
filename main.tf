module "rgroup-N01610736" {
  source = "./modules/rgroup-N01610736"

   resource_group_name = var.resource_group_name
   location = var.location 

   common_tags = local.common_tags

}

module "network-N01610736" {
  source = "./modules/network-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location
  
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  nsg_name = var.nsg_name

  common_tags = local.common_tags
}

module "common-N01610736" {
  source = "./modules/common-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location

  common_tags = local.common_tags
}

module "linuxvm-N01610736" {
  source = "./modules/linuxvm-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location
  
  subnet_id =  module.network-N01610736.subnet_id
  storage_account_uri = module.common-N01610736.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "windowsvm-N01610736" {
  source = "./modules/windowsvm-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location
  
  subnet_id =  module.network-N01610736.subnet_id
  storage_account_uri = module.common-N01610736.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "datadisk-N01610736" {
  source = "./modules/datadisk-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location

  linux_vm_ids        = module.linuxvm-N01610736.linuxvm.ids 
  windows_vm_ids      = module.windowsvm-N01610736.windows.ids
  
  all_vm_ids = concat(module.linuxvm-N01610736.linuxvm.ids, module.windowsvm-N01610736.windows.ids) 
  common_tags = local.common_tags
}

module "loadbalancer-N01610736" {
  source              = "./modules/loadbalancer-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location
 
  linux_vm_nic_ids	      =	module.linuxvm-N01610736.linuxvm-nic-ids
  linux_vm_name           = module.linuxvm-N01610736.linuxvm.hostnames
  common_tags = local.common_tags
}

module "database-N01610736" {
  source                       = "./modules/database-N01610736"
  
  resource_group_name = module.rgroup-N01610736.resource_group_name
  location = module.rgroup-N01610736.location

  common_tags = local.common_tags
}


