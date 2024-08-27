# AWS S3 terraform module

Terraform module which creates S3 resources on AWS.


## Usage

```hcl
    module "s3" {
        source = "git::git remote add origin git@github.com:quarks-labs/aws-s3-module.git"
        for_each = try({ for key, bucket in var.buckets : key => bucket }, {})
        bucket = each.value.bucket
        tags = merge({}, var.tags)
    }
```



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.46 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.46 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | Name of bucket S3 | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags of aws rotules | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |