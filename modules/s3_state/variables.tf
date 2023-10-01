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


variable "bucket_name" {
  description = "Terraform state storage bucket name. Must be unique"
  type        = string
}

variable "tags" {
  description = "Special tags"
  type        = map(any)
  default     = {}
}

variable "access_key" {
  description = "S3 aws_access_key_id from storage.key"
  type        = string
  sensitive   = true
  default     = ""
}

variable "secret_key" {
  description = "S3 aws_secret_access_key from storage.key"
  type        = string
  sensitive   = true
  default     = ""
}
