# Cloud Engineer Learning Notes

Project: Terraform AWS CI/CD Pipeline

---

# Project Goal

Build a CI/CD pipeline that automatically validates Terraform Infrastructure as Code using GitHub Actions before deployment.

---

# Milestone Progress

## ✅ Milestone 1

Repository initialized

Learned:

- Professional project structure
- Local development workflow
- VS Code
- Git
- GitHub

---

## ✅ Milestone 2

Python Validation

Learned:

- Running Python locally
- Creating a validation script
- Python execution workflow

Commands

```powershell
python validate.py
```

---

## ✅ Milestone 3

GitHub Actions Basics

Learned:

- Workflow
- Runner
- Job
- Step
- YAML structure

Key concepts

Workflow

↓

Job

↓

Steps

---

## ✅ Milestone 4

Terraform Workflow

Learned:

- Terraform formatting
- terraform fmt
- Why formatting matters

Commands

```powershell
terraform fmt
terraform fmt -check -recursive
```

---

## ✅ Milestone 5

Terraform Project Structure

Files

- versions.tf
- providers.tf
- variables.tf
- providers.tf
- main.tf
- outputs.tf

Purpose

versions.tf

Defines Terraform and provider versions.

providers.tf

Configures AWS.

variables.tf

Stores reusable values.

main.tf

Infrastructure resources.

outputs.tf

Displays useful information.

---

## Commands Learned

Git

```powershell
git status
git add .
git commit -m "message"
git push
```

Terraform

```powershell
terraform init

terraform fmt

terraform validate

terraform plan
```

Python

```powershell
python validate.py
```

---

## Interview Notes

### What is Infrastructure as Code?

Infrastructure managed through code instead of manual configuration.

---

### What is Terraform?

An Infrastructure as Code tool used to provision cloud resources.

---

### What is a Provider?

A provider allows Terraform to communicate with a cloud platform such as AWS.

---

### What is terraform init?

Downloads required providers and initializes the Terraform working directory.

---

### What is terraform fmt?

Formats Terraform code into a consistent style.

---

### What is terraform validate?

Checks Terraform configuration for syntax and configuration errors.

---

## Questions to Review Later

- Difference between terraform plan and terraform apply
- Terraform State
- Remote Backend
- GitHub Secrets
- CI vs CDs


## Terraform Versions

### Purpose

The `versions.tf` file defines:

- The minimum Terraform version required.
- The providers used by the project.
- Provider version constraints for consistent deployments.

### Key Concepts

- `required_version` ensures compatibility.
- `required_providers` tells Terraform which cloud provider to use.
- Version constraints help prevent breaking changes.


## Terraform Providers

### Purpose

A provider allows Terraform to communicate with a cloud platform or service.

### AWS Provider

The AWS provider enables Terraform to create and manage AWS resources such as:

- Amazon S3
- Amazon EC2
- Amazon VPC
- Amazon RDS

### Default Tags

Default tags automatically apply consistent metadata to every AWS resource created by the project.


## Terraform Variables

### Purpose

Variables allow Terraform configurations to be flexible and reusable.

### Benefits

- Avoid hardcoding values.
- Make projects reusable.
- Support multiple environments.
- Improve readability.

### Common Variable Types

- string
- number
- bool
- list
- map
- object