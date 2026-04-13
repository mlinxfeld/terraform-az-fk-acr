# terraform-az-fk-acr

This repository contains a reusable **Terraform / OpenTofu module** and progressive examples for deploying **Azure Container Registry (ACR)** resources.

It is part of the **[FoggyKitchen.com training ecosystem](https://foggykitchen.com/courses/azure-fundamentals-terraform-course/)** and is designed as a **small, composable container registry layer** that integrates cleanly with other Azure modules such as AKS, compute, RBAC, and private endpoints.

---

## 🎯 Purpose

The goal of this module is to provide a **clear, educational, and architecture-aware reference implementation** for Azure Container Registry:

- Focused on **Azure Container Registry creation**
- Explicit inputs and outputs — no hidden dependencies
- Designed to integrate cleanly with:
  - Azure Kubernetes Service (AKS)
  - Virtual Machines
  - Azure RBAC
  - Private Endpoints

This is **not** a full platform module or container delivery pipeline.  
It is a **learning-first, building-block module**.

---

## ✨ What the module does

The module creates a single Azure Container Registry with a small set of explicit options:

- Registry name
- Resource Group and location
- SKU selection
- Optional admin user enablement
- Optional public network access
- Tags

The module intentionally does **not** create:

- Resource Groups
- AKS clusters
- Virtual Machines
- RBAC assignments
- Private Endpoints
- Private DNS zones
- Image build or push workflows

Each of those concerns belongs in its **own dedicated module**.

---

## 📂 Repository Structure

```bash
terraform-az-fk-acr/
├── examples/
│   ├── 01_basic_acr/
│   ├── 02_aks_with_acr_attach/
│   └── README.md
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
└── README.md
```

---

## 🚀 Example Usage

```hcl
module "acr" {
  source = "git::https://github.com/mlinxfeld/terraform-az-fk-acr.git?ref=v0.1.0"

  acr_name                    = "fkacrdev001"
  resource_group_name         = "rg-fk-dev-001"
  location                    = "westeurope"
  sku                         = "Basic"
  admin_enabled               = false
  public_network_access_enabled = true

  tags = {
    project = "foggykitchen"
    env     = "dev"
  }
}
```

This module is intentionally minimal:

- `acr_name` defines the registry name
- `resource_group_name` defines where the registry is created
- `location` defines the Azure region
- `sku` controls the registry service tier

That keeps the module easy to compose with other FoggyKitchen Azure modules.

---

## 📤 Outputs

| Output | Description |
|------|-------------|
| `acr_id` | The ID of the created Azure Container Registry |
| `acr_name` | The name of the created Azure Container Registry |
| `acr_login_server` | The login server hostname of the registry |
| `acr_admin_username` | Admin username, if admin access is enabled |
| `acr_admin_password` | Admin password, if admin access is enabled |

---

## 🧠 Design Philosophy

- Container registry should stay **small and composable**
- Identity, authorization, and networking should remain **explicit**
- Registry creation should be easy to connect with AKS, VMs, and CI/CD pipelines
- Outputs are first-class citizens

---

## 🧩 Related Modules & Training

- [terraform-az-fk-aks](https://github.com/mlinxfeld/terraform-az-fk-aks)
- [terraform-az-fk-rbac](https://github.com/mlinxfeld/terraform-az-fk-rbac)
- [terraform-az-fk-private-endpoint](https://github.com/mlinxfeld/terraform-az-fk-private-endpoint)
- [terraform-az-fk-private-dns](https://github.com/mlinxfeld/terraform-az-fk-private-dns)
- [terraform-az-fk-compute](https://github.com/mlinxfeld/terraform-az-fk-compute)

---

## 🪪 License

Licensed under the **Universal Permissive License (UPL), Version 1.0**.  
See [LICENSE](LICENSE) for details.

---

© 2026 FoggyKitchen.com — *Cloud. Code. Clarity.*
