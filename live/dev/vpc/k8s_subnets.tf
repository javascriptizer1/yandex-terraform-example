resource "yandex_vpc_subnet" "k8s" {
  for_each = try({ for k, v in var.subnets["k8s"] : "${v.name}" => v }, {})

  name           = "k8s-${local.network_name}-${each.value.zone}:${each.value.cidr[0]}"
  description    = "K8s ${local.network_name} subnet for zone ${each.value.zone}"
  v4_cidr_blocks = each.value.cidr
  zone           = each.value.zone
  network_id     = yandex_vpc_network.this.id
  route_table_id = try(yandex_vpc_route_table.private_subnets[0].id, null)

  labels = {
    environment = var.env
    name        = each.value.name
  }
}

resource "yandex_vpc_route_table" "k8s_subnets" {
  count      = length(var.subnets["k8s"]) == 0 ? 0 : 1
  name       = "${local.network_name}-k8s"
  network_id = yandex_vpc_network.this.id

  labels = {
    environment = var.env
    name        = "${local.network_name}-k8s"
  }

  dynamic "static_route" {
    for_each = length(var.subnets["k8s"]) == 0 ? [] : var.subnets["k8s"]
    content {
      destination_prefix = local.cidr_anywhere
      gateway_id         = yandex_vpc_gateway.main.id
    }
  }
}
