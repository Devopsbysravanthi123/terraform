provider "google" {
    project =var.project_id
    region = var.region  
    credentials = file("key.json")
}

# calling vpc module
module "vpc" {
    source = "../modules/vpc"
    vpc_name = var.local_vpc_name 
}

#calling subnet module

module "subnet" {
    source = "../modules/subnet"
    subnet_name = var.local_subnet_name
    region = var.region
    subnet_cidr = var.local_subnet_cidr
    vpc_id = module.vpc.vpc_id
    depends_on = [ module.vpc ]
}

# calling gce module

module "gce" {
    source = "../modules/gce"
    vm_name = var.local_vm_name
    machine_type = var.local_machine_type
    zone = var.local_zone
    subnet_id = module.subnet.subnet_id
    depends_on = [ module.subnet ]
  
}
