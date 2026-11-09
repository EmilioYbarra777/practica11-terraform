terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

resource "cloudflare_d1_database" "db" {
  account_id = var.account_id
  name       = var.d1_database_name
}