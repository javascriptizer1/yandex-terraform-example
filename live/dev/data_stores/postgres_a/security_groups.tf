resource "yandex_vpc_security_group" "sg_postgres_a" {
  name        = "postgres-a-sg"
  description = "SG for Postgres A"
  network_id  = local.network_output.yc_vpc_id

  labels = {
    environment = var.env
    name        = "postgres-a-sg"
  }

  ingress {
    description = "!!! Allow incoming SSH traffic to postgres a!!!"
    to_port     = 22
    from_port   = 22
    protocol    = "TCP"
    v4_cidr_blocks = [
      local.network_output.yc_vpc_cidr_anywhere
    ]
  }

  ingress {
    description = "Allow incoming traffic from k8s subnet"
    to_port     = 5432
    from_port   = 5432
    protocol    = "TCP"
    v4_cidr_blocks = flatten([
      local.network_output.k8s_a_cidr,
      local.network_output.k8s_b_cidr,
    ])
  }

  egress {
    description = "Allow all outgoing traffic"
    to_port     = 0
    from_port   = 0
    protocol    = "ANY"
    v4_cidr_blocks = [
      local.network_output.yc_vpc_cidr_anywhere
    ]
  }
}
