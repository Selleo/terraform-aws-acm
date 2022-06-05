module "info" {
  source  = "Selleo/context/null"
  version = "0.3.0"

  namespace = "kudos"
  stage     = "developemnt"
  name      = "api"
}

module "cert" {
  source = "../../modules/wildcard"

  domain                = "hetzner.example.selleo.com"
  context               = module.info.context
  external_dns_provider = true
}

output "records" {
  value = module.cert.validation_records
}
