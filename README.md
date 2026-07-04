# Terraform Secure S3 CI/CD Pipeline

[![Terraform CI Pipeline](https://github.com/Fadila-Yiddana/terraform-secure-s3-cicd-pipeline/actions/workflows/terraform.yml/badge.svg)](https://github.com/Fadila-Yiddana/terraform-secure-s3-cicd-pipeline/actions/workflows/terraform.yml)

## Project Overview

This project demonstrates a production-style CI/CD pipeline for Terraform using GitHub Actions and Python to automatically validate Infrastructure as Code (IaC) before deploying secure AWS infrastructure.

The pipeline automatically validates Infrastructure as Code before deployment by performing Python validation, Terraform formatting checks, initialization, and configuration validation.

The infrastructure provisions a secure Amazon S3 bucket configured according to AWS security best practices.

The infrastructure created in this project follows AWS security best practices by enabling:

- Server-side encryption
- Bucket versioning
- Public access block
- Bucket ownership controls

---

## Architecture

<p align="center">
  <img src="diagrams/terraform-cicd-architecture.png"
       alt="Terraform Secure S3 CI/CD Pipeline Architecture"
       width="900">
</p>

> Diagram represents my implementation of a GitHub Actions CI/CD pipeline for Terraform infrastructure. Created and customized as part of my DevOps project.

---

## Technologies Used

- Terraform
- GitHub Actions
- Python
- AWS S3
- Git
- Infrastructure as Code (Terraform)

---

## Project Structure

```text
terraform-secure-s3-cicd-pipeline/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── python/
│   └── validate.py
│
├── terraform/
│   ├── versions.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── main.tf
│   └── outputs.tf
│
├── diagrams/
├── NOTES.md
└── README.md
```

---

## CI/CD Workflow

The GitHub Actions pipeline automatically performs the following checks whenever code is pushed to the repository:

1. Checkout repository
2. Setup Python
3. Run Python validation
4. Setup Terraform
5. Terraform Format Check
6. Terraform Initialize
7. Terraform Validate

Only validated Infrastructure as Code proceeds through the pipeline.

---

## AWS Security Features

The Terraform configuration provisions an Amazon S3 bucket with the following security controls:

- Amazon S3 Bucket
- Bucket Versioning
- Server-side Encryption (AES256)
- Public Access Block
- Bucket Ownership Controls

---

## Skills Demonstrated

- Terraform
- GitHub Actions
- AWS S3
- Infrastructure as Code (IaC)
- CI/CD Pipelines
- Python Automation
- Cloud Security
- Git
- DevOps

---


---

## Validation

The project has been successfully validated using:

- terraform fmt
- terraform validate
- GitHub Actions CI pipeline

All commits automatically trigger the CI pipeline to verify the Terraform configuration before deployment.


---

## License

This project is licensed under the MIT License.

## Future Improvements

- Terraform Plan artifacts
- Remote Terraform state (Amazon S3)
- DynamoDB state locking
- Multi-environment deployments
- Manual approval before production deployment
