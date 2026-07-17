variable "subnet_name" {
    description = "name of the subnet"
    type = string
}

variable "region" {
    description = "region where the subnet will be created" 
    type = string
}


variable "subnet_cidr" {
    description = "cidr range for the subnet"
    type = string
  
}

variable "vpc_id" {
    description = "id of the vpc where the subnet will be created"
    type = string
  
}
