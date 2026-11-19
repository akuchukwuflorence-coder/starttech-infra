variable "project_name" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "kubernetes_version" {
  description = "Supported EKS Kubernetes version"
  type        = string
}

variable "vpc_id" {
  type = string
}
