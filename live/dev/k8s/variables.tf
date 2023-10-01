variable "default_zone" {
  description = "Default cloud zone"
  type        = string
  default     = "ru-central1-a"
}

variable "k8s_cluster_state_key" {
  description = "K8S Cluster module state key"
  type        = string
  default     = "k8s_cluster.tfstate"
}
