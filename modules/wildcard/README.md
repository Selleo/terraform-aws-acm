## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_route53_record.validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_overwrite"></a> [allow\_overwrite](#input\_allow\_overwrite) | Allow to overwrite Route53 records | `bool` | `true` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain for the certificate | `string` | n/a | yes |
| <a name="input_san"></a> [san](#input\_san) | Subject alternative names (conflicts with: `wildcard`) | `list(string)` | `[]` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Default TTL for Route53 record validation | `number` | `60` | no |
| <a name="input_wildcard"></a> [wildcard](#input\_wildcard) | Generates wildcard certificate (conflicts with: `san`) | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Certifcate ARN |
