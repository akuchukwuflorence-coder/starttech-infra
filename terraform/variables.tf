variable "aws_region" {
  description = "AWS region for Starttech Assessment 2"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "starttech"
}

variable "kubernetes_version" {
  description = "EKS Kubernetes version supported in the deployment region"
  type        = string
}

variable "alb_dns_name" {
  description = "Backend ALB DNS name; set after ingress deployment"
  type        = string
  default     = null
}
