variable "resource_group_name" {}

variable "location" {}

variable  "common_tags" {}

variable "vnet_name" {
  type    = string
  default = "N01610736-vnet"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "N01610736-subnet"
}

variable "subnet_prefixes" {
  default = ["10.0.0.0/24"]
}

variable "nsg_name" {
  type    = string
  default = "N01610736-nsg"
}
