output "external_ip_postgres_a" {
  value = yandex_compute_instance.postgres_a.network_interface.0.nat_ip_address
}
