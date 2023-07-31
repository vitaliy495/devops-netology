resource "yandex_compute_instance" "node1" {
  name                      = "node1"
  zone                      = var.default_zone
  hostname                  = var.vm_1
  allow_stopping_for_update = true
  platform_id               = "standard-v1"

  resources {
    cores         = 2
    memory        = 4
    core_fraction = "20"
  }

  boot_disk {
    initialize_params {
      image_id = "fd8loi0gfu0v74tm2qst"
      size     = "20"
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.default.id
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
