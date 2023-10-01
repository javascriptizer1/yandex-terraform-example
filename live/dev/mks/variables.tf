variable "default_zone" {
  description = "Default cloud zone"
  type        = string
  default     = "ru-central1-a"
}

variable "env" {
  description = "Environment value for labels"
  type        = string
  default     = "dev"
}


variable "network_state_key" {
  description = "Network module state key"
  type        = string
  default     = "vpc.tfstate"
}

variable "cluster_name" {
  description = "K8S cluster name. Underscore does not support"
  type        = string
  default     = "dev-cluster"
}

variable "cluster_version" {
  description = "K8S cluster version"
  type        = string
  default     = "1.23"
}

variable "cluster_description" {
  description = "K8S cluster description"
  type        = string
  default     = "Kubernetes test cluster"
}

variable "master_labels" {
  description = "Set of key/value label pairs to assign Kubernetes master nodes."
  type        = map(string)
  default = {
    environment = "dev"
    owner       = "example"
    role        = "master"
    service     = "kubernetes"
  }
}

variable "public_access" {
  description = "Public or private Kubernetes cluster"
  type        = bool
  default     = true
}
