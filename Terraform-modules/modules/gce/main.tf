resource "google_compute_instance" "vm" {
    name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone
    boot_disk {
        initialize_params {
          image ="ubuntu-os-cloud/ubuntu-2204-lts"
        }
    } 
    network_interface{
        subnetwork = var.subnet_id
        access_config {
          
        }
    } 
}