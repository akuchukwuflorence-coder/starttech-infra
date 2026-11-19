# StartTech Infrastructure

## Overview
Terraform infrastructure for the StartTech cloud engineering assessment.

## Architecture
- AWS VPC with public and private subnets
- Amazon EKS cluster: starttech-cluster
- EKS managed node group: starttech-node-group
- Amazon S3 for React frontend hosting
- Amazon CloudFront for frontend delivery and API routing
- Amazon ECR repository: starttech-backend-api
- Amazon ElastiCache Redis: starttech-redis

## Repository Structure
- terraform/ - Infrastructure as Code
- terraform/modules/networking/ - VPC and networking
- terraform/modules/eks/ - Kubernetes infrastructure
- terraform/modules/storage/ - S3 and ECR
- terraform/modules/cdn/ - CloudFront
- terraform/modules/database/ - Redis
- scripts/ - Infrastructure deployment scripts
- .github/workflows/ - GitHub Actions automation

## Terraform Commands
terraform init
terraform fmt -recursive
terraform validate
terraform plan

## Deployment
Infrastructure deployment requires AWS credentials and appropriate IAM permissions.

The initial deployment provisions the base infrastructure. Backend ALB integration is completed after the AWS Load Balancer Controller creates the ALB.

## Security
Do not commit AWS credentials, Terraform state files, deployment plans, or real application secrets.

## Status
Terraform configuration validated and planned. Live deployment pending.
