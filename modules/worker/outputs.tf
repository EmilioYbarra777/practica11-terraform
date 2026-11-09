output "worker_url" {
  description = "URL pública del Worker"
  value       = "https://${var.worker_name}.${var.workers_subdomain}.workers.dev"
}