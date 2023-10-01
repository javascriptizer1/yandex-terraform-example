resource "yandex_vpc_subnet" "private" {
  for_each = try({ for k, v in var.subnets["private"] : "${v.name}" => v }, {})

  name           = "private-${local.network_name}-${each.value.zone}:${each.value.cidr[0]}"
  description    = "Private ${local.network_name} subnet for zone ${each.value.zone}"
  v4_cidr_blocks = each.value.cidr
  zone           = each.value.zone
  network_id     = yandex_vpc_network.this.id
  route_table_id = try(yandex_vpc_route_table.private_subnets[0].id, null)

  labels = {
    environment = var.env
    name        = each.value.name
  }
}

resource "yandex_vpc_gateway" "main" {
  name = "main"
  shared_egress_gateway {}

  labels = {
    environment = var.env
    name        = "main"
  }
}

resource "yandex_vpc_route_table" "private_subnets" {
  count      = length(var.subnets["private"]) == 0 ? 0 : 1
  name       = "${local.network_name}-private"
  network_id = yandex_vpc_network.this.id

  dynamic "static_route" {
    for_each = length(var.subnets["private"]) == 0 ? [] : var.subnets["private"]
    content {
      destination_prefix = local.cidr_anywhere
      gateway_id         = yandex_vpc_gateway.main.id
    }
  }
}

