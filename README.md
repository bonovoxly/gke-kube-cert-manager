# kube-cert-manager

The Kubernetes YAML files for GKE in order to deploy [the kube-cert-manager](https://github.com/PalmStoneGames/kube-cert-manager).

# Requirements

- The kube-cert-manager-google secret:

```
kubectl create secret generic kube-cert-manager-google --from-file=${HOME}/.config/gcloud/kube-cert-manager.json
```

This file is created from a Google Cloud service account.  Example commands to create the eqivalent account:

```
gcloud --project EXAMPLE-123456 iam service-accounts create kube-cert-manager --display-name "kube-cert-manager"
gcloud --project EXAMPLE-123456 iam service-accounts keys create ~/.config/kube-cert-manager.json --iam-account kube-cert-manager@EXAMPLE-123456.iam.gserviceaccount.com
gcloud --project EXAMPLE-123456 projects add-iam-policy-binding EXAMPLE-123456 --member serviceAccount:kube-cert-manager@EXAMPLE-123456.iam.gserviceaccount.com --role roles/dns.admin
```

[More information on Google Cloud and GKE service account creation can be found in these notes](https://blog.billyc.io/notes/googlecloud/).

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
