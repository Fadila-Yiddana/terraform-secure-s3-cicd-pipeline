## CI/CD Pipeline Architecture

![CI/CD Pipeline](diagrams/cicd-pipeline-architecture.png)

### Architecture Overview

This diagram illustrates the Continuous Integration (CI) pipeline implemented for this project using GitHub Actions.

Whenever code is pushed to the GitHub repository, the workflow is automatically triggered. The pipeline performs several validation steps before any infrastructure changes can be deployed.

### Pipeline Workflow

1. **Developer Pushes Code**
   - A code change is pushed to the GitHub repository.

2. **GitHub Actions Trigger**
   - GitHub Actions automatically starts the CI workflow.

3. **Python Validation**
   - Executes a custom Python script (`validate.py`) to verify the project structure and required files.

4. **Terraform Format Check**
   - Runs `terraform fmt -check` to ensure the Terraform code follows standard formatting.

5. **Terraform Initialization**
   - Executes `terraform init` to download the required provider plugins.

6. **Terraform Validation**
   - Runs `terraform validate` to verify that the Terraform configuration is syntactically correct.

7. **Pipeline Success**
   - If every stage completes successfully, the workflow finishes with a successful build status.

### Benefits

- Automated code validation
- Consistent Terraform formatting
- Early detection of configuration errors
- Improved code quality
- Demonstrates Infrastructure as Code (IaC) and CI/CD best practices
