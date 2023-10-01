resource "yandex_vpc_network" "this" {
  name        = local.network_name
  description = "YC network created with terraform"

  lifecycle {
    create_before_destroy = true
  }
  labels = {
    environment = var.env
    name        = "${local.network_name}_vpc"
  }
}

resource "yandex_vpc_default_security_group" "default" {
  description = "YC network default security group created with terraform"
  network_id  = yandex_vpc_network.this.id

  labels = {
    environment = var.env
    name        = "${local.network_name}_vpc"
  }

  ingress {
    protocol       = "ANY"
    v4_cidr_blocks = [local.cidr_anywhere]
    from_port      = 0
    to_port        = 0
  }

  egress {
    protocol       = "ANY"
    v4_cidr_blocks = [local.cidr_anywhere]
    from_port      = 0
    to_port        = 0
  }
}
