# Check kubectl version
kubectl version --client

# Authenticate with Google Cloud
tanujgym@github-worker-node:~/.gcp$ gcloud auth activate-service-account --key-file=totemic-program-423702-a7-74cc6e55bfab.js
<!-- on -->
<!-- Activated service account credentials for: [kubernetes-service-account@totemic-program-423702-a7.iam.gserviceaccount.com]
tanujgym@github-worker-node:~/.gcp$ clear &&  -->

# Get credentials for the GKE cluster
gcloud container clusters get-credentials your-cluster-name --region your-region --project your-project-id

# Check nodes in the cluster
kubectl get nodes

# Get cluster information
kubectl cluster-info

# Deploy a test pod
kubectl run test-nginx --image=nginx --port=80

# Check if the test pod is running
kubectl get pods

# Clean up the test pod
kubectl delete pod test-nginx
