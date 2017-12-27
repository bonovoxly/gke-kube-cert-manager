# kube-cert-manager

The Kubernetes YAML files for GKE in order to deploy [the kube-cert-manager](https://github.com/PalmStoneGames/kube-cert-manager).

# Requirements

- The kube-cert-manager-google secret:

```
kubectl create secret generic kube-cert-manager-google --from-file=${HOME}/.config/gcloud/kube-cert-manager.json
```

This is a file created from the creation of a Google Cloud service account. [See this blog post for information on configuring a Google Account]().


# Deployment

```
kubectl create -f rbac.yml
kubectl create -f certificate-type.yml
kubectl create -f pvc.yml
kubectl create -f deployment.yml

```

# Uninstall

- To uninstall/remove:

```
./remove.sh
```
