variable "project_id" {
    description = "gcp project id" 
    type = string 
}

variable "region" {
    description = "the gcp region"
    type = string
}

variable "local_vpc_name" {
    description = "name of the vpc"
    type = string
}

variable "local_subnet_name" {
    description = "name of the subnet" 
    type = string 
}

variable "local_subnet_cidr" {
    description = "cidr range for the subnet"
    type = string
  
}

variable "local_vm_name" {
    description = "name of the vm"
    type = string  
}

variable "local_machine_type" {
    description = "name of the machine type"
    type = string
  
}

variable "local_zone" {
    description = "zone where the instance will be created"
    type = string
  
}
