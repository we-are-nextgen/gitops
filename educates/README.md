# Educates Training Platform (NextGen)

Deploys Educates workshop infrastructure for hands-on lab and bootcamp environments.

## Prerequisites

- Kubernetes cluster with wildcard DNS (e.g. `*.workshops.smart-nextgen.com`)
- Ingress controller already installed on the cluster (e.g. Azure Web App Routing on AKS)
- [Educates CLI](https://docs.educates.dev/en/stable/getting-started/quick-start-guide.html) installed locally

Install the CLI:

```bash
# macOS (arm64)
curl -sSLo educates https://github.com/educates/educates-training-platform/releases/latest/download/educates-darwin-arm64
chmod +x educates && sudo mv educates /usr/local/bin/educates
educates version
```

## Install Educates on AKS

Educates is installed with **`educates deploy-platform`**, not `install-package`. You need a platform config file first.

```bash
# Point kubectl at your AKS cluster
az aks get-credentials --resource-group nextgen-dev --name nextgen-aks

# Deploy Educates platform (one-time)
educates deploy-platform --config gitops/educates/platform-config.yaml
```

Edit [`platform-config.yaml`](platform-config.yaml) to match your ingress domain. For AKS with an existing ingress controller, use `provider: generic` and disable Contour (already set in the sample config).

For **local development** (Kind cluster + Educates bundled together), use instead:

```bash
educates create-cluster
```

See [CLI Based Installation](https://docs.educates.dev/en/stable/installation-guides/cli-based-installation.html) and [Infrastructure Providers](https://docs.educates.dev/en/stable/installation-guides/infrastructure-providers.html).

### Alternative: Carvel / GitOps install

If you prefer GitOps with `kapp-controller` already on the cluster, see [Carvel Based Installation](https://docs.educates.dev/en/stable/installation-guides/carvel-based-installation.html) instead of the CLI.

## Deploy NextGen workshops

After the platform is running:

```bash
kubectl apply -k gitops/educates/
```

Or deploy a single workshop with the CLI:

```bash
educates deploy-workshop -f gitops/educates/workshop-markdown-sample.yaml
```

## Configure iframe embedding

The NextGen portal embeds Educates sessions in an iframe. Configure the training portal to allow framing from your front-end origin. After the portal is running, patch the portal configuration or set ingress annotations so `Content-Security-Policy frame-ancestors` includes:

```
https://front-end.smart-nextgen.com
```

For local development, also allow `http://localhost:3000`.

## Retrieve REST API credentials

After the TrainingPortal is ready:

```bash
kubectl describe trainingportal nextgen-portal -n educates
```

Record the robot account username/password and OAuth client id/secret. Store them in the `educates-credentials` secret (see `gitops/api/deployment.yaml`).

## Verify REST API

```bash
PORTAL_URL=https://nextgen-portal-ui.workshops.smart-nextgen.com
CLIENT_ID=<from describe output>
CLIENT_SECRET=<from describe output>
ROBOT_USER=<from describe output>
ROBOT_PASS=<from describe output>

TOKEN=$(curl -s -X POST -d "grant_type=password&username=${ROBOT_USER}&password=${ROBOT_PASS}" \
  -u "${CLIENT_ID}:${CLIENT_SECRET}" \
  "${PORTAL_URL}/oauth2/token/" | jq -r .access_token)

curl -s -H "Authorization: Bearer ${TOKEN}" \
  "${PORTAL_URL}/workshops/catalog/environments/"
```

## Deploy additional workshops

Author workshop YAML files matching NextGen lab slugs (e.g. `openshift-console-basics`) and apply them:

```bash
educates deploy-workshop -f workshop-openshift-console-basics.yaml
```

Ensure each workshop name is listed under `spec.workshops` in `training-portal.yaml`.

## Uninstall

```bash
educates delete-platform
```
