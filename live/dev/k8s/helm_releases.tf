resource "helm_release" "prometheus-node-exporter" {
  name            = "prometheus-node-exporter"
  namespace       = "cluster-monitoring"
  repository      = "https://prometheus-community.github.io/helm-charts"
  chart           = "prometheus-node-exporter"
  cleanup_on_fail = true
  lint            = true
  values          = []
}

resource "helm_release" "ingress-nginx" {
  name            = "ingress-nginx"
  namespace       = "ingress-nginx"
  repository      = "https://kubernetes.github.io/ingress-nginx"
  chart           = "ingress-nginx"
  version         = "4.2.3"
  cleanup_on_fail = true
  lint            = true
  values          = []
}

