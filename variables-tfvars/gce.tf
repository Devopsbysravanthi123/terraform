resource "google_compute_instance" "vm-1" {
  name= "flipkart10-vm"
  zone = var.zone
  machine_type =var.machine_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }  

  network_interface {
    subnetwork = google_compute_subnetwork.subnet-1.id
    access_config {
      # empty
      #public ip
    }  
  }
}

