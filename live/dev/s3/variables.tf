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
