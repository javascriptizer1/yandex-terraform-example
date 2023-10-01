resource "yandex_vpc_subnet" "public" {
  for_each = try({ for k, v in var.subnets["public"] : "${v.name}" => v }, {})

  name           = "public-${local.network_name}-${each.value.zone}:${each.value.cidr[0]}"
  description    = "${local.network_name} subnet for zone ${each.value.zone}"
  v4_cidr_blocks = each.value.cidr
  zone           = each.value.zone
  network_id     = yandex_vpc_network.this.id

  labels = {
    environment = var.env
    name        = each.value.name
  }
}
