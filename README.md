# 🚀 Azure AKS Terraform Provisioning

[![Azure](https://img.shields.io/badge/Azure-0089D6?style=flat-square&logo=microsoft-azure&logoColor=white)](https://azure.microsoft.com/)
[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white)](https://kubernetes.io/)

Production-ready Terraform module for automated provisioning of **Azure Kubernetes Service (AKS)** and **Azure Container Registry (ACR)** with automated RBAC `AcrPull` role assignments.

---

## 📌 Features

- **Modular Design**: Generic child module (`modules/aks`) separated from root environment caller (`ParentModule`).
- **Integrated ACR & AKS**: Provisions Container Registry alongside AKS with automated identity attachment.
- **System-Assigned Managed Identity**: Enforces secure Azure RBAC image pull integration without static secrets.
- **Configurable Cluster Specification**: Customizable node counts, VM SKUs, Kubernetes versions, and resource tags.

---

## 📂 Repository Structure

```text
azure-aks-terraform-provisioning/
├── modules/
│   └── aks/                        # Reusable Generic Terraform Module
│       ├── main.tf                 # RG, AKS, ACR, and RBAC Role Assignment
│       ├── variables.tf            # Configurable module variables
│       ├── outputs.tf              # Cluster and ACR connection details
│       └── providers.tf            # Required Terraform providers (~> 3.0)
├── ParentModule/                   # Root caller module environment
│   ├── main.tf                     # Calls child module "aks"
│   ├── variables.tf            # Environment input variables
│   ├── outputs.tf              # Pass-through outputs
│   ├── provider.tf             # AzureRM provider block
│   └── terraform.tfvars.example# Example input configuration file
└── README.md                       # Repository Documentation
```

---

## 🛠️ Quick Start Guide

### Prerequisites
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) logged in (`az login`)
- [Terraform](https://developer.hashicorp.com/terraform/downloads) (>= 1.3.0)

### 1. Initialize & Apply Infrastructure

```bash
cd ParentModule

# Initialize Terraform modules and providers
terraform init

# Create configuration file
cp terraform.tfvars.example terraform.tfvars

# Review execution plan
terraform plan

# Deploy infrastructure to Azure
terraform apply -auto-approve
```

### 2. Connect to the Provisioned AKS Cluster

```bash
az aks get-credentials --resource-group rg-aks-dev --name dev-aks-cluster
kubectl get nodes
```

---

## 🧹 Teardown

```bash
terraform destroy -auto-approve
```

---

## 👩‍💻 Author

**Priya Jaiswal**  
[GitHub Profile](https://github.com/Pjaisw1103)
