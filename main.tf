resource "aws_s3_bucket" "this" {
  bucket   = try(var.bucket, "no_name")
  tags     = merge(var.tags, {})
}