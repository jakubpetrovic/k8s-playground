/* resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
} */

resource "kubernetes_namespace" "helm-app" {
  metadata {
    name = "helm-app"
  }
}

resource "kubernetes_namespace" "test-app" {
  metadata {
    name = "test-app"
  }
}