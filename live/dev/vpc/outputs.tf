output "yc_vpc_id" {
  description = "VPC id"
  value       = yandex_vpc_network.this.id
}

output "yc_vpc_public_subnet_ids" {
  description = "Public subnet ids"
  value       = [for v in yandex_vpc_subnet.public : v.id]
}

output "yc_vpc_public_cidr" {
  description = "Public cidr_blocks"
  value       = flatten([for subnet in yandex_vpc_subnet.public : subnet.v4_cidr_blocks])
}

output "yc_vpc_private_cidr" {
  description = "Private cidr_blocks"
  value       = flatten([for subnet in yandex_vpc_subnet.private : subnet.v4_cidr_blocks])
}

output "yc_vpc_k8s_cidr" {
  description = "K8S cidr_blocks"
  value       = flatten([for subnet in yandex_vpc_subnet.k8s : subnet.v4_cidr_blocks])
}

output "k8s_a_id" {
  description = "K8S subnet k8s_a id"
  value       = yandex_vpc_subnet.k8s["k8s_a"].id
}

output "k8s_a_cidr" {
  description = "K8S subnet k8s_a v4_cidr_blocks"
  value       = yandex_vpc_subnet.k8s["k8s_a"].v4_cidr_blocks
}

output "k8s_b_cidr" {
  description = "K8S subnet k8s_b v4_cidr_blocks"
  value       = yandex_vpc_subnet.k8s["k8s_b"].v4_cidr_blocks
}

output "yc_vpc_cidr_anywhere" {
  description = "v4 cidr anywhere"
  value       = local.cidr_anywhere
}

output "yc_vpc_k8s_subnets" {
  description = "K8S subnets"
  value       = [for k, v in yandex_vpc_subnet.k8s : v]
}

output "yc_vpc_private_subnets" {
  description = "Private subnets"
  value       = [for k, v in yandex_vpc_subnet.private : v]
}

output "yc_vpc_public_subnets" {
  description = "Public subnets"
  value       = [for k, v in yandex_vpc_subnet.public : v]
}

