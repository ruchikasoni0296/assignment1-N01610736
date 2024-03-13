variable "resource_group_name" {}

variable "location" {}

variable  "common_tags" {}

variable "log_analytics_workspace_name" {
 default = "N01610736-log-analysis-workspace"
}

variable "recovery_services_vault_name" {
 default = "VaultN01610736"
}

variable "storage_account_name" {
 default = "N01610736storageaccnew"
}
