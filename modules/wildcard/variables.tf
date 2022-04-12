variable "domain" {
  type        = string
  description = "Domain for the certificate"
}

# optional

variable "san" {
  type        = list(string)
  description = "Subject alternative names (conflicts with: `wildcard`)"
  default     = []
}

variable "wildcard" {
  type        = bool
  description = "Generates wildcard certificate (conflicts with: `san`)"
  default     = true
}

variable "ttl" {
  type        = number
  description = "Default TTL for Route53 record validation"
  default     = 60
}

variable "allow_overwrite" {
  type        = bool
  description = "Allow to overwrite Route53 records"
  default     = true
}
