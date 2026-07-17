variable "region" {
  description = "this is region in gcp"
  type = string 
}

variable "project_id" {
  description = "project id of gcp"
  type = string
}

variable "zone" {
  description = "zone in which VM should be created"
  type = string  
}

variable "machine_type" {
  description = "machine type of VM"
  type = string 
}
