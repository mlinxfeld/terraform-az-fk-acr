# Azure Container Registry with Terraform/OpenTofu – Training Examples

This directory contains progressive examples used with the **terraform-az-fk-acr** module.
The examples are designed as **incremental building blocks**, starting from a basic public registry and growing toward more realistic integrations with RBAC, AKS, and private networking.

These examples are part of the **[FoggyKitchen.com training ecosystem](https://foggykitchen.com/courses-2/)** and are used to show how Azure Container Registry fits into broader infrastructure designs.

---

## 🧭 Example Overview

| Example | Title | Key Topics |
|:-------:|:------|:-----------|
| 01 | **Basic Azure Container Registry** | ACR baseline, SKU selection, public endpoint |
| 02 | **AKS With ACR Attach** | ACR integration with AKS, AcrPull assignment, module composition |
| 03 | **Private ACR With AKS And Private Endpoint** | Premium ACR, Private Endpoint, Private DNS, AKS integration, explicit RBAC |

Examples will be added progressively to cover scenarios such as:

- deeper private networking patterns and service integrations

Each example should stay focused on **one architectural goal** and remain runnable on its own.

---

## ⚙️ How to Use

Each example directory should contain:

- Terraform/OpenTofu configuration (`.tf`)
- A focused `README.md` explaining the goal of the example
- A minimal, runnable architecture

Typical workflow:

```bash
cd examples/<example-directory>
tofu init
tofu plan
tofu apply
```

---

## 🧩 Design Principles

- One example = one architectural concept
- No placeholder resources without purpose
- Clear separation of concerns (registry, RBAC, networking, consumers)
- Examples should integrate cleanly with other FoggyKitchen Azure modules

---

## 🧩 Related Resources

- [FoggyKitchen Azure ACR Module (terraform-az-fk-acr)](../)
- [FoggyKitchen Azure AKS Module (terraform-az-fk-aks)](https://github.com/mlinxfeld/terraform-az-fk-aks)
- [FoggyKitchen Azure RBAC Module (terraform-az-fk-rbac)](https://github.com/mlinxfeld/terraform-az-fk-rbac)
- [FoggyKitchen Azure Private Endpoint Module (terraform-az-fk-private-endpoint)](https://github.com/mlinxfeld/terraform-az-fk-private-endpoint)
- [FoggyKitchen Azure Private DNS Module (terraform-az-fk-private-dns)](https://github.com/mlinxfeld/terraform-az-fk-private-dns)

---

## 🪪 License

Licensed under the **Universal Permissive License (UPL), Version 1.0**.  
See [LICENSE](../LICENSE) for details.

---

© 2026 FoggyKitchen.com — *Cloud. Code. Clarity.*
