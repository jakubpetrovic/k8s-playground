# deploy argo
helm install argocd .\argocd\

# deploy argo app1 along with new argo project
helm install argocd-app1 .\argocd-apps\app1-chart

# update helm release
helm upgrade argocd-app1 .\argocd-apps\app1-chart --namespace argocd

# git tags

git tag -a v1.0 -m "release v1.0" -f
git tag -a env-dev -m "dev tag tracking" -f
git tag dev-env v1.0 -f
git push origin env-dev -f

