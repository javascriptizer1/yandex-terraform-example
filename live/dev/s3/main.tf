terraform {
  backend "s3" {
    endpoint                = "storage.yandexcloud.net"
    region                  = "ru-central1"
    bucket                  = "terraform-dev"
    key                     = "s3.tfstate"
    shared_credentials_file = "../../../storage.key" // project root

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  zone = var.default_zone
}
