terraform {
  backend "s3" {
    endpoint                = "storage.yandexcloud.net"
    region                  = "ru-central1"
    bucket                  = "terraform-dev"
    key                     = "k8s.tfstate"
    shared_credentials_file = "../../../storage.key" // project root

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  zone = var.default_zone
}

provider "kubernetes" {
  host                   = local.cluster_output.kube_cluster_external_v4_endpoint
  cluster_ca_certificate = local.cluster_output.kube_cluster_ca_certificate
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["managed-kubernetes", "create-token"]
    command     = "yc"
  }
}

provider "helm" {
  kubernetes {
    host                   = local.cluster_output.kube_cluster_external_v4_endpoint
    cluster_ca_certificate = local.cluster_output.kube_cluster_ca_certificate
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["managed-kubernetes", "create-token"]
      command     = "yc"
    }
  }
}
