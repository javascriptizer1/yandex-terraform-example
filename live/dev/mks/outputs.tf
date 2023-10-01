output "kube_cluster_id" {
  description = "Kubernetes cluster ID"
  value       = try(module.yc_cluster.cluster_id, null)
}

output "kube_cluster_internal_v4_endpoint" {
  description = "Internal v4 url endpoint for Kubernetes cluster"
  value       = try(module.yc_cluster.internal_v4_endpoint, null)
}

output "kube_cluster_external_v4_endpoint" {
  description = "External v4 url endpoint for Kubernetes cluster"
  value       = try(module.yc_cluster.external_v4_endpoint, null)
}

output "kube_cluster_ca_certificate" {
  description = "PEM public Kubernetes cluster certificate"
  value       = try(module.yc_cluster.cluster_ca_certificate, null)
}

output "kube_cluster_name" {
  description = "Kubernetes cluster name"
  value       = try(module.yc_cluster.cluster_name, null)
}

output "external_cluster_cmd_str" {
  description = "Connection string to external Kubernetes cluster"
  value       = try(module.yc_cluster.external_cluster_cmd, null)
}

output "internal_cluster_cmd_str" {
  description = "Connection string to internal Kubernetes cluster"
  value       = try(module.yc_cluster.internal_cluster_cmd, null)
}
