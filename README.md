# AWS Infrastructure with Terraform

This Terraform project is designed to simplify the creation and management of infrastructure on AWS. By defining your infrastructure as code, you can easily deploy and manage resources in a repeatable and consistent manner.

## Project Objective

The main objective of this project is to facilitate the creation of infrastructure on AWS, providing a streamlined and efficient way to manage cloud resources.

## Resources Being Created

The project currently supports the creation of the following AWS resources:

- **VPC:** A Virtual Private Cloud to isolate your resources.
- **Subnets:** Subnets in 6 availability zones for high availability.
- **Internet Gateway:** Provides internet access to your VPC.
- **Route Table:** Configures routing for your subnets.
- **Security Groups:** Security groups configured for:
  - SSH access only from your local IP.
  - Public access for HTTP and HTTPS.
- **EC2 Instance:** A virtual machine to host your applications.
- **Elastic IP:** A static IP address for your EC2 instance.

## Prerequisites

Before you can execute this Terraform project, you need to have the following:

- **AWS CLI**: Installed and configured with your AWS credentials.
- **Terraform**: Installed on your local machine.
- **AWS Account**: A valid AWS account with necessary permissions.

## How to Execute

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jhonatan98rios/terraform-ec2-for-api.git
   cd terraform-ec2-for-api
    ```

2. **Initialize Terraform:**
   ```bash
   terraform init
    ```

3. **Plan the deployment:**
   ```bash
   terraform plan
    ```

4. **Apply the deployment:**
   ```bash
   terraform apply
    ```
