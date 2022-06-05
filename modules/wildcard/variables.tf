variable "context" {
  description = "Project context."

  type = object({
    namespace = string
    stage     = string
    name      = string
  })
}

variable "domain" {
  description = "Domain for the certificate"
  type        = string
}

# optional

variable "external_dns_provider" {
  description = <<-EOS
    When external DNS provider is used, validation records must be configured manually.
    Otherwise this happens automatically with Route53.
  EOS

  type    = bool
  default = false
}

variable "san" {
  description = "Subject alternative names (conflicts with: `wildcard`)."
  type        = list(string)
  default     = []
}

variable "wildcard" {
  description = "Generates wildcard certificate (conflicts with: `san`)."
  type        = bool
  default     = true
}

variable "ttl" {
  description = "Default TTL for Route53 record validation."
  type        = number
  default     = 60
}

variable "allow_overwrite" {
  description = "Allow to overwrite Route53 records."
  type        = bool
  default     = true
}
