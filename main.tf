module "d1_database" {
  source = "./modules/d1_database"

  account_id       = var.account_id
  d1_database_name = var.d1_database_name
}

module "worker" {
  source = "./modules/worker"

  account_id         = var.account_id
  worker_name        = var.worker_name
  database_id        = module.d1_database.database_id
  workers_subdomain  = var.workers_subdomain
}