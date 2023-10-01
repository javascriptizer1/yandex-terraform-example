locals {
  cluster_output = data.terraform_remote_state.cluster.outputs
  kubeconfig     = <<KUBECONFIG
apiVersion: v1
clusters:
- cluster:
    server: ${data.terraform_remote_state.cluster.outputs.kube_cluster_external_v4_endpoint}
    certificate-authority-data: ${base64encode(data.terraform_remote_state.cluster.outputs.kube_cluster_ca_certificate)}
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: yc
  name: ycmk8s
current-context: ycmk8s
users:
- name: yc
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1beta1
      command: yc
      args:
      - k8s
      - create-token
KUBECONFIG
}
