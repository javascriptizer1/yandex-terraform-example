resource "kubernetes_service_account" "developer-a" {
  metadata {
    name = "developer-a"
  }
  secret {
    name = kubernetes_secret.developer-a-account-secret.metadata.0.name
  }
}

resource "kubernetes_secret" "developer-a-account-secret" {
  metadata {
    name = "developer-a-account-secret"
  }
}

resource "kubernetes_cluster_role_binding" "developer-a-cluster-role-binding" {
  metadata {
    name = "developer-a-cluster-role-binding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "developer-a"
    api_group = ""
  }
}

###########################################################
