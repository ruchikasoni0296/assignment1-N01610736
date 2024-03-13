output "Resourse_Group_Name" {
  value = module.rgroup-N01610736.resource_group_name
}

output "location" {
  value = module.rgroup-N01610736.location
}

output "virtual_network_name" {
  value = module.network-N01610736.vnet_name
}

output "subnet_name" {
  value = module.network-N01610736.subnet_name
}

output "subnet_id" {
  value = module.network-N01610736.subnet_id
}

output "log_analytics_workspace_name" {
  value = module.common-N01610736.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common-N01610736.recovery_services_vault_name
}

output "storage_account_name" {
  value = module.common-N01610736.storage_account_name
}

output "storage_account-primary_blob_endpoint" {
  value = module.common-N01610736.storage_account-primary_blob_endpoint
}

output "datadisk_name" {
  value = module.datadisk-N01610736.datadisk_name
}

output "linuxvm-hostname" {
  value = module.linuxvm-N01610736.linuxvm
}

output "linuxvm-fqdn" {
  value = module.linuxvm-N01610736.linuxvm-fqdn
}

output "linuxvm-private-ip" {
  value = module.linuxvm-N01610736.linuxvm-private-ip
}

output "linuxvm-public-ip" {
  value = module.linuxvm-N01610736.linuxvm-public-ip
}

output "linuxvm-nic-ids" {
  value = module.linuxvm-N01610736.linuxvm-nic-ids
}

output "windowsvm-hostname" {
  value = module.windowsvm-N01610736.windows
}

output "windowsvm-fqdn" {
  value = module.windowsvm-N01610736.windows_vm_fqdn
}

output "windowsvm-private-ip" {
  value = module.windowsvm-N01610736.windows_private_ip_address
}

output "windowsvm-public-ip" {
  value = module.windowsvm-N01610736.windows_public_ip_address
}

output "windowsvm-nic-ids" {
  value = module.windowsvm-N01610736.windows_nic_id
}

output "loadbalancer-public-ip" {
  value = module.loadbalancer-N01610736.loadbalancer-public-ip
}

output "loadbalancer-name" {
  value = module.loadbalancer-N01610736.loadbalancer-name
}

output "database_instance_name" {
  value = module.database-N01610736.database_instance_name
}
