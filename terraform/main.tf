module "networking" {
  source = "./modules/networking"
}

module "eks" {
  vpc_id             = module.networking.vpc_id
  source             = "./modules/eks"
  project_name       = var.project_name
  private_subnet_ids = module.networking.private_subnet_ids
  kubernetes_version = var.kubernetes_version
}

module "storage" {
  source       = "./modules/storage"
  project_name = var.project_name
}

module "cdn" {
  source                      = "./modules/cdn"
  project_name                = var.project_name
  bucket_id                   = module.storage.bucket_id
  bucket_arn                  = module.storage.bucket_arn
  bucket_regional_domain_name = module.storage.bucket_regional_domain_name
  alb_dns_name                = var.alb_dns_name
}


module "database" {
  source = "./modules/database"

  project_name               = var.project_name
  vpc_id                     = module.networking.vpc_id
  private_subnet_ids         = module.networking.private_subnet_ids
  eks_node_security_group_id = module.eks.node_security_group_id
}

