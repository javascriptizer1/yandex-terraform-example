data "terraform_remote_state" "cluster" { // для обращения к данным из модуля mks
  backend = "s3"
  config = {
    endpoint                = "storage.yandexcloud.net"
    bucket                  = "terraform-dev"
    region                  = "ru-central1"
    key                     = var.k8s_cluster_state_key
    shared_credentials_file = "../../../storage.key"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
