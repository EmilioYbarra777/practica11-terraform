output "worker_url" {
  description = "URL pública del Worker"
  value       = module.worker.worker_url
}

output "database_id" {
  description = "ID de la base de datos D1"
  value       = module.d1_database.database_id
}