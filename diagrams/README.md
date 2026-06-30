## Architecture

<p align="center">
  <img src="./diagrams/terraform-cicd-architecture.png" width="900">
</p>

**Figure 1:** GitHub Actions CI/CD pipeline validating Terraform infrastructure. Developers push code to GitHub, triggering an automated workflow that performs Python validation, Terraform formatting checks, initialization, and configuration validation before confirming a successful pipeline execution.
