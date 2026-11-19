output "ecr_repository_url" {
  description = "Backend container image repository"
  value       = module.storage.ecr_repository_url
}
