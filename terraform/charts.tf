# resource "helm_release" "nginx_ingress" {
#   name       = "nginx-ingress-controller"

#   repository = "https://charts.bitnami.com/bitnami"
#   chart      = "nginx-ingress-controller"

#   set {
#     name  = "service.type"
#     value = "ClusterIP"
#   }
# }

#ARGOCD resource
resource "helm_release" "argocd" {
  name  = "argocd"
  chart = "../argocd"
}

#ARGOCD App resources
resource "helm_release" "argocd_app1_dev" {
  name  = "argocd-app1"
  chart = "../argocd-apps/app1-chart"

  values = [
    "${file("../argocd-apps/app1-chart/values-dev.yaml")}"
  ]
}