terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

resource "cloudflare_workers_script" "worker" {
  account_id         = var.account_id
  script_name        = var.worker_name
  content            = file("${path.module}/worker.js")
  main_module        = "worker.js"
  compatibility_date = "2025-01-01"

  bindings = [
    {
      name = "DB"
      type = "d1"
      id   = var.database_id
    }
  ]
}

resource "cloudflare_workers_script_subdomain" "subdomain" {
  account_id  = var.account_id
  script_name = cloudflare_workers_script.worker.script_name
  enabled     = true
}

// comentario random