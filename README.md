# 🚀 DevOps Setup Automation Scripts

This repository contains Bash scripts to automate the installation and configuration of Docker, Kubernetes (`kubectl`), and Minikube on a Linux-based system (Amazon Linux/CentOS/RHEL). These scripts simplify the process of setting up a local Kubernetes environment for development and learning.

## 📌 Features

- Automated Docker installation
- Automatic Docker service configuration
- Installation of Kubernetes CLI (`kubectl`)
- Installation of Minikube
- Installation of required dependencies
- Automatic Minikube cluster setup
- Commands to verify the Kubernetes cluster

## 🛠️ Prerequisites

- Linux system (Amazon Linux, CentOS, or RHEL)
- Sudo privileges
- Internet connection

## ▶️ Usage

1. Clone the repository.
2. Navigate to the project directory.
3. Make the script executable:

bash
chmod +x minikube.sh

4. Run the script:

bash
./minikube.sh

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
