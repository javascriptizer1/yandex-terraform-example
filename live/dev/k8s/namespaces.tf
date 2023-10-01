resource "kubernetes_namespace" "test" {
  metadata {
    annotations = {
      name = "test"
    }

    labels = {
      unit = "test"
    }

    name = "test"
  }
}

resource "kubernetes_namespace" "ingress_nginx" {
  metadata {
    annotations = {
      name = "ingress-nginx"
    }

    labels = {
      unit = "ingress-nginx"
    }

    name = "ingress-nginx"
  }
}

resource "kubernetes_namespace" "cluster_monitoring" {
  metadata {
    annotations = {
      name = "cluster-monitoring"
    }

    labels = {
      unit = "cluster-monitoring"
    }

    name = "cluster-monitoring"
  }
}
