# argocd-tutorial

A simple demo

#### Commands

```bash
# install ArgoCD in k8s
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# access ArgoCD UI
kubectl get svc -n argocd
kubectl port-forward svc/argocd-server 8080:443 -n argocd

# login with admin user and below token (as in documentation):
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 --decode && echo

# run application
kubectl apply -f registry-credentials.yaml -n argocd
kubectl apply -f application.yaml

# run guest service
minikube service guestbook-ui --url -n guestbook

```

</br>

#### Links

- ArgoCD Configuration: [https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/](https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/)

- ArgoCD Example Apps: [https://github.com/argoproj/argocd-example-apps](https://github.com/argoproj/argocd-example-apps)
