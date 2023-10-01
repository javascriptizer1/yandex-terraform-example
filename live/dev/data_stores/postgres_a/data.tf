data "terraform_remote_state" "vpc" { // для обращения к данным из модуля vpc
  backend = "s3"
  config = {
    endpoint                = "storage.yandexcloud.net"
    bucket                  = "terraform-dev"
    region                  = "ru-central1"
    key                     = var.network_state_key
    shared_credentials_file = "../../../../storage.key"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
