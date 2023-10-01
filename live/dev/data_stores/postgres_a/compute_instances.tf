resource "yandex_compute_instance" "postgres_a" {
  # в названии этих ресурсов разрешены "-", но не "_"
  name                      = "postgres-a"
  platform_id               = "standard-v3"
  zone                      = var.default_zone
  allow_stopping_for_update = true

  lifecycle {
    prevent_destroy = false
  }


  labels = {
    environment = var.env
    name        = "postgres-a"
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      description = "Ubuntu 2204"
      image_id    = "fd82sqrj4uk9j7vlki3q"
    }
  }

  network_interface {
    subnet_id          = local.network_output.yc_vpc_public_subnet_ids.0
    security_group_ids = [yandex_vpc_security_group.sg_postgres_a.id]
    nat                = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
