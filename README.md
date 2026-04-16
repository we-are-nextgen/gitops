# NextGen GitOps

Kubernetes manifests for the **NextGen** platform, managed declaratively with [Kustomize](https://kustomize.io/) and deployed on **Azure Kubernetes Service (AKS)**.

## Architecture

```
                  ┌──────────────┐
                  │   Ingress    │
                  │  (Azure Web  │
                  │  App Routing)│
                  └──────┬───────┘
                         │
              ┌──────────▼──────────┐
              │   Front-End (Next.js)│
              │   Port 3000          │
              └──────────┬──────────┘
                         │
          ┌──────────────▼──────────────┐
          │       API (Quarkus)          │
          │       Port 8080              │
          └──────────────┬──────────────┘
                         │
          ┌──────────────▼──────────────┐
          │     PostgreSQL 15            │
          │     Port 5432                │
          └─────────────────────────────┘

          ┌─────────────────────────────┐
          │     Keycloak (SSO/IAM)       │
          │     + PostgreSQL backend     │
          └─────────────────────────────┘
```

| Component | Image | Port |
|-----------|-------|------|
| Front-End | `quay.io/wael2000/nextgen-front-end` | 3000 |
| API | `quay.io/wael2000/nextgen-api` | 8080 |
| Database | `postgres:15` | 5432 |
| Keycloak | See `keycloak/manifests/` | 8443 |

## Repository Structure

```
gitops/
├── api/                      # API deployment, service, kustomization
├── db/                       # PostgreSQL deployment, secret, PVC, init job
├── front-end/                # Front-end deployment, service, ingress, configmap
├── keycloak/                 # Keycloak IAM stack (manifests, realm, scripts)
├── nextgen-namespace/        # Namespace, RBAC, quotas, limit ranges
├── kustomization.yaml        # Root Kustomize entrypoint
├── aks-powershell.sh         # AKS credential & access helper
└── keycloak.sh               # Keycloak deployment helper
```

## Prerequisites

- [kubectl](https://kubernetes.io/docs/tasks/tools/) v1.27+
- [Kustomize](https://kubectl.docs.kubernetes.io/installation/kustomize/) v5+ (or `kubectl -k`)
- Azure CLI (`az`) with access to the `nextgen-dev` resource group
- Access to the `nextgen-aks` AKS cluster

## Getting Started

### 1. Connect to the AKS cluster

```bash
az aks get-credentials --resource-group nextgen-dev --name nextgen-aks
```

### 2. Create the namespace and RBAC

```bash
kubectl apply -k nextgen-namespace/
```

### 3. Deploy the application stack

```bash
kubectl apply -k .
```

This deploys the database, Keycloak, and front-end via the root `kustomization.yaml`.

### 4. Verify the deployment

```bash
kubectl get pods -n nextgen-gitops
kubectl get svc -n nextgen-gitops
kubectl get ingress -n nextgen-gitops
```

## Components

### Front-End (Next.js)

- Authenticated via Keycloak using NextAuth
- Exposed externally through an Ingress with TLS (Azure Key Vault certificate)
- Domain: `front-end.smart-nextgen.com`

### API (Quarkus)

- Connects to PostgreSQL using credentials from the `postgresql` secret
- Runs in `prod` profile
- ClusterIP service on port 8080

### Database (PostgreSQL 15)

- Persistent storage via PVC
- Init job runs `scripts.sql` on first deploy
- Readiness and liveness probes configured

### Keycloak

- Provides SSO/IAM for the platform
- Uses its own PostgreSQL backend
- Realm configuration exported in `keycloak/realm/nextgen-realm.json`
- Deploy with: `keycloak/scripts/deploy.sh`

### Namespace Governance

- Resource quota: 10 pods, 2 CPU, 12Gi memory
- Default limit range: 500m CPU / 512Mi memory per container
- RBAC: team edit access, individual view bindings

## Useful Commands

```bash
# Check pod status
kubectl get pods -n nextgen-gitops

# View logs
kubectl logs -f deployment/nextgen-api -n nextgen-gitops
kubectl logs -f deployment/nextgen-front-end -n nextgen-gitops

# Connect to PostgreSQL
kubectl exec -it deployment/postgresql -n nextgen-gitops -- \
  psql -h postgresqldb -U "$POSTGRES_USER" -d "$POSTGRES_DB"

# Validate Kustomize build
kubectl kustomize .

# Dry-run apply
kubectl apply -k . --dry-run=client
```

## Domains

| Service | URL |
|---------|-----|
| Front-End | `https://front-end.smart-nextgen.com` |
| API | `https://nextgen-api.smart-nextgen.com` |
| Keycloak | `https://sso.smart-nextgen.com` |
