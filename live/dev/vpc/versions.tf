terraform {
  required_version = ">= 1.3.7"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "> 0.8"
    }
  }
}
