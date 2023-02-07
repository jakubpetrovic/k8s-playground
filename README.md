# deploy argo
helm install argocd .\argocd\

# deploy argo app1 along with new argo project
helm install argocd-app1 .\argocd-apps\app1-chart

# update helm release
helm upgrade argocd-app1 .\argocd-apps\app1-chart --namespace argocd

# get argocd secrets
