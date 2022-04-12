data "aws_route53_zone" "this" {
  name = var.domain
}

locals {
  default_san = ["*.${var.domain}"]
}

resource "aws_acm_certificate" "this" {
  domain_name               = var.domain
  subject_alternative_names = var.wildcard ? local.default_san : var.san
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "validation" {
  for_each = {
    for dvo in aws_acm_certificate.this.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = var.allow_overwrite
  name            = each.value.name
  records         = [each.value.record]
  ttl             = var.ttl
  type            = each.value.type
  zone_id         = data.aws_route53_zone.this.zone_id
}
