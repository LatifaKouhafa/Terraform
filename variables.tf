variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}


variable "vm_ip" {
  type        = string
  description = "The public IP address of the Azure VM."
  default     = "172.178.19.136"  
}

variable "ssh_username" {
  type        = string
  description = "The SSH username used to connect to the VM."
  default     = "azureuser" 
}

variable "ssh_private_key_path" {
  type        = string
  description = "The local file path to the SSH private key used for authentication."
  default     = "C:/Users/LatifaKOUHAFA/.ssh/id_rsa"  
}
