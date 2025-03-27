# Access S3 from Private EC2 Instance using VPC Endpoint

This project demonstrates how to access an Amazon S3 bucket from a private EC2 instance using an AWS VPC endpoint. The infrastructure is provisioned using Terraform, and the deployment is automated with GitHub Actions.

## Architecture Diagram

![Architecture Diagram](./image_59_49.png)

## Tech Stack
- **AWS**: EC2, S3, VPC, VPC Endpoint, IAM
- **Terraform**: Infrastructure as Code (IaC)
- **GitHub Actions**: CI/CD Automation

## Project Overview
1. A **public EC2 instance** (Bastion Host) allows SSH access to the private EC2 instance.
2. A **private EC2 instance** is deployed in a private subnet with no direct internet access.
3. A **VPC endpoint** is configured to allow secure access to the S3 bucket from the private EC2 instance.
4. Terraform is used to provision the entire infrastructure.
5. GitHub Actions automates the deployment process.

## Prerequisites
- AWS account with IAM permissions
- Terraform installed (`>=1.0.0`)
- GitHub repository with Actions enabled
- SSH key pair for EC2 access

## Deployment Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/Access-S3-from-Private-EC2-instance-using-VPC-Endpoint.git
   cd Access-S3-from-Private-EC2-instance-using-VPC-Endpoint
   ```
2. Initialize Terraform:
   ```sh
   terraform init
   ```
3. Apply Terraform configuration:
   ```sh
   terraform apply -auto-approve
   ```
4. SSH into the Bastion Host:
   ```sh
   ssh -i your-key.pem ec2-user@public-ec2-ip
   ```
5. SSH into the Private EC2 instance from the Bastion Host:
   ```sh
   ssh -i your-key.pem ec2-user@private-ec2-ip
   ```
6. Verify S3 access from the Private EC2 instance:
   ```sh
   aws s3 ls s3://your-bucket-name
   ```

## GitHub Actions
A GitHub Actions workflow is included to automate the Terraform deployment.

- **Trigger**: Push to `main` branch
- **Steps**:
  - Lint Terraform code
  - Initialize Terraform
  - Apply changes

## Cleanup
To remove the resources:
```sh
terraform destroy -auto-approve
```

## License
This project is licensed under the MIT License.
