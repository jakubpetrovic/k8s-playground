/* resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
} */

/* resource "kubernetes_namespace" "helm-app" {
  metadata {
    name = "helm-app"
  }
} */

resource "kubernetes_namespace" "prod_ns" {
  metadata {
    name = "prod-ns"
  }
}

resource "kubernetes_namespace" "dev-ns" {
  metadata {
    name = "dev-ns"
  }
}