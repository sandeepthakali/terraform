provider "google" {
  project       = "terraformgcp-testproject01"
  credentials   = file("credentials.json")
  region        = "europe-west2"
  zone          = "europe-west2-a"
}
 // check github commits
resource "google_compute_instance" "my_intance" {
    name = "terrafrom-instance"
    machine_type = "f1-micro"
    zone = "europe-west2-a"
    allow_stopping_for_update = true 

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-9"
      }
    }
    network_interface {
      network = "default"
      access_config{
          //necessary even if empty
      }
    }
}