## 📜 Script Commands and Their Purpose

| Command | Purpose |
|---------|---------|
| `sudo yum install -y docker` | Installs Docker. |
| `sudo systemctl start docker.service` | Starts the Docker service. |
| `sudo systemctl enable docker.service` | Enables Docker to start automatically on boot. |
| `curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"` | Downloads the Kubernetes CLI (`kubectl`). |
| `chmod +x ./kubectl` | Makes `kubectl` executable. |
| `sudo mv ./kubectl /usr/local/bin/` | Installs `kubectl` system-wide. |
| `curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64` | Downloads Minikube. |
| `chmod +x minikube` | Makes Minikube executable. |
| `sudo mv minikube /usr/local/bin/` | Installs Minikube system-wide. |
| `sudo yum install conntrack -y` | Installs `conntrack`, a dependency required by Minikube. |
| `sudo minikube start --force` | Starts a local Kubernetes cluster. |
| `sudo kubectl get pods -A` | Lists all pods across all namespaces. |
| `sudo kubectl get nodes` | Displays the Kubernetes cluster nodes. |
