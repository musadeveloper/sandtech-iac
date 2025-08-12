# SandTech Infrastructure as Code (IaC)

This repository contains Terraform Infrastructure as Code (IaC) configurations to provision a secure and modular Azure environment for SandTech.

---

## Overview

The infrastructure setup includes:

- A **virtual network** with both **public** and **private subnets**
- An **internet-facing load balancer** deployed in the public subnet
- A **PostgreSQL database** deployed in the private subnet
- **Network Security Groups (NSGs)** configured to:
  - Allow secure public access to the load balancer
  - Restrict database access to only backend services
- Azure **Key Vault** for secure secrets management

---

## Repository Structure

### Environments
Each environment has its own Terraform configuration under `app/`:

- `app/dev/` - Development environment
- `app/ppr/` - Pre-production environment
- `app/prod/` - Production environment

Each contains:
- `main.tf` — Main Terraform config
- `variables.tf` — Input variables
- `terraform.tfvars` — Variable values for the environment
- `outputs.tf` — Terraform outputs

---

### Modules

Reusable modules are located under `modules/`:

| Module Name  | Purpose                                                  |
|--------------|----------------------------------------------------------|
| `rg`         | Creates Azure Resource Group                              |
| `vnet`       | Creates Virtual Network with public and private subnets  |
| `keyvault`   | Deploys Azure Key Vault and access policies               |
| `nsg`        | Creates Network Security Groups for subnets and services |
| `load_balancer` | Deploys an internet-facing Azure Load Balancer          |
| `postgresql` | Deploys Azure Database for PostgreSQL in private subnet  |

---

## How to Use

1. **Set your environment variables** or configure `terraform.tfvars` with appropriate values (e.g., resource group name, location, subnet CIDRs, admin credentials).

2. **Initialize Terraform**

```bash
terraform init
