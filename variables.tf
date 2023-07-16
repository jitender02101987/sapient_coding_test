variable "location" {
 description = "The location where resources will be created"
 default     = "eastus2"
 type = string
}

variable "tags" {
 description = "A map of the tags to use for the resources that are deployed"
 type        = map(string)

 default = {
   environment = "sapientlab"
 }
}

variable "resource_group_name" {
 description = "The name of the resource group in which the resources will be created"
 default     = "VMSS"
 type = string
}

locals {
  regions_with_availability_zones = ["eastus"] #["centralus","eastus2","eastus","westus"]
  zones = contains(local.regions_with_availability_zones, var.location) ? list("1","2","3") : null
}

variable "azurerm_virtual_network" {
 description = "The name of the virtual network in which the resources will be created"
 default     = "VMSSnet"
 type = string
}

variable "azurerm_linux_virtual_machine_scale_set" {
 description = "The name of the virtual network in which the resources will be created"
 default     = "VMScaleSet"
 type = string
}

variable "availability_zone_names" {
 description = "The name of the virtual network in which the resources will be created"
 default     = ["eastus"]
 type    = list(string)
}

variable "application_port" {
   description = "The port that you want to expose to the external load balancer"
   default     = 80
}

variable "admin_user" {
   description = "User name to use as the admin account on the VMs that will be part of the VM Scale Set"
   default     = "azureuser"
}

variable "vmss_linux_script" {
  description = "Define your VM Scale set and the script you want to add as a custom script."
  default = {
    vmss_name                = ""
    vmss_resource_group_name = ""
    filename                 = "web.conf" #Script located in the local path ./script/
  }
}