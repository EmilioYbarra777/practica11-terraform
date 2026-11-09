variable "account_id" {
  description = "ID de la cuenta de Cloudflare"
  type        = string
}

variable "worker_name" {
  description = "Nombre del Worker"
  type        = string
}

variable "database_id" {
  description = "ID de la base de datos D1 a enlazar"
  type        = string
}

variable "workers_subdomain" {
  description = "Subdominio de la cuenta en workers.dev"
  type        = string
}