output "arn" {
  description = "Certifcate ARN"
  value       = aws_acm_certificate.this.arn
}

output "zone_id" {
  description = "Route53 zone ID"
  value       = data.aws_route53_zone.this.zone_id
}
