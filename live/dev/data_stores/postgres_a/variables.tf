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
