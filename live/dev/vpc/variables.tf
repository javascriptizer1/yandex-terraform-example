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

variable "subnets" {
  description = "Subnets"
  type = map(list(object({
    name = string,
    zone = string,
    cidr = list(string)
  })))

  validation {
    condition     = alltrue([for i in keys(var.subnets) : alltrue([for j in lookup(var.subnets, i) : contains(["ru-central1-a", "ru-central1-b", "ru-central1-c"], j.zone)])])
    error_message = "Error! Zones not supported!"
  }

  default = {
    "public" = [
      {
        name = "public_a"
        zone = "ru-central1-a"
        cidr = ["10.0.1.0/28"]
      },
      {
        name = "public_b"
        zone = "ru-central1-b"
        cidr = ["10.0.2.0/28"]
      },
      {
        name = "public_c"
        zone = "ru-central1-c"
        cidr = ["10.0.3.0/28"]
      }
    ],
    "private" = [
      {
        name = "private_a"
        zone = "ru-central1-a"
        cidr = ["10.0.4.0/28"]
      },
      {
        name = "private_b"
        zone = "ru-central1-b"
        cidr = ["10.0.5.0/28"]
      },
      {
        name = "private_c"
        zone = "ru-central1-c"
        cidr = ["10.0.6.0/28"]
      }
    ],
    "k8s" = [
      {
        name = "k8s_a"
        zone = "ru-central1-a"
        cidr = ["10.10.0.0/24"]
      },
      {
        name = "k8s_b"
        zone = "ru-central1-b"
        cidr = ["10.11.0.0/24"]
      }
    ],
  }
}
