module "yc_cluster" {
  source = "github.com/terraform-yc-modules/terraform-yc-kubernetes"

  cluster_name    = var.cluster_name
  description     = var.cluster_description
  cluster_version = var.cluster_version
  network_id      = local.network_output.yc_vpc_id

  master_locations = [
    {
      zone      = local.network_output.yc_vpc_k8s_subnets[0].zone,
      subnet_id = local.network_output.yc_vpc_k8s_subnets[0].id
    }
  ]

  master_maintenance_windows = [
    {
      day        = "monday"
      start_time = "23:00"
      duration   = "3h"
    }
  ]

  node_groups = {
    "yc-k8s-app-servers" = {
      name        = "app-servers"
      description = "Kubernetes nodes group 01"

      node_locations = [
        {
          zone      = local.network_output.yc_vpc_k8s_subnets[1].zone
          subnet_id = local.network_output.yc_vpc_k8s_subnets[1].id
        }
      ]

      platform_id   = "standard-v3"
      node_cores    = 2
      node_memory   = 2
      node_gpus     = 0
      core_fraction = 100

      disk_type = "network-ssd"
      disk_size = 30

      preemptible = false

      auto_scale = {
        min     = 1
        max     = 2
        initial = 1
      }

      node_labels = {
        environment = var.env
        ng_group    = "app-servers"
      }
    }
  }
}
