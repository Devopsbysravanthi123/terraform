variable "vm_name" {
    description = "name of the instance"
    type = string
}

variable "machine_type" {
    description = "machine type  of the instance"
    type = string 
}

variable "zone" {
    description = "zone where the vm instance will be created"
    type = string
}

variable "subnet_id" {
    description = "id of the subnet"
    type = string
  
}
