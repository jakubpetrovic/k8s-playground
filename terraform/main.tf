# terraform {
#   required_providers {
#     libvirt = {
#       source = "dmacvicar/libvirt"
#     }
#   }
# }

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

