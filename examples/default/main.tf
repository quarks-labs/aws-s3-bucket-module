module "s3" {
    source = "../.."
    for_each = try({ for key, bucket in var.buckets : key => bucket }, {})
    bucket = each.value.bucket
    tags = merge({}, var.tags)
}
