variable "project_name" {
  type = string
}

variable "bucket_id" {
  type = string
}

variable "bucket_arn" {
  type = string
}

variable "bucket_regional_domain_name" {
  type = string
}

variable "alb_dns_name" {
  description = "DNS name of the backend ALB; null until the ALB exists"
  type        = string
  default     = null
}
