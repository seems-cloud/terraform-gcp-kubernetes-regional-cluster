# Kubernetes Regional Cluster on GCP

## Get credentials

### Login
```bash
gcloud auth login
```

### Get `.kube/confg`

```
gcloud container clusters get-credentials example --zone=us-central1-c

# regional
gcloud container clusters get-credentials example --region=us-central1
``` 

## Affinity

### Pod Affinity

`requiredDuringSchedulingIgnoredDuringExecution`

```yaml
    spec:
      affinity:
        podAntiAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
            - labelSelector:
                matchExpressions:
                  - key: app
                    operator: In
                    values:
                      - db
              topologyKey: "kubernetes.io/hostname"
```

`preferredDuringSchedulingIgnoredDuringExecution`

```yaml
    spec:
      affinity:
        podAntiAffinity:
          preferredDuringSchedulingIgnoredDuringExecution:
            - podAffinityTerm:
                labelSelector:
                  matchExpressions:
                    - key: app
                      operator: In
                      values:
                        - web
                topologyKey: "kubernetes.io/hostname"
              weight: 100
```