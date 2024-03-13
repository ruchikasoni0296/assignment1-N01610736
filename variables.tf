locals {
  common_tags = {
    Assignment = "CCGC 5502 Automation Assignment"
    Name = "Abha.Kamble"
    ExpirationDate = "2024-12-31"
    Environment = "Learning"
  }
}

variable "location" {
  description = "Location for the resource group"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
	default	= "N01610736-RG"
}

variable "vnet_name" {
	default	= "N01610736-VNET"
}

variable "subnet_name" {
	default = "N01610736-SUBNET"
}

variable "nsg_name" {
	default = "N01610736-NSG"
}
