variable "tags" {
  type = map(any)
  description = "Tags of aws rotules"
}

variable "buckets" {
  description = "List of buckets"
  type = map(object({
        bucket = string
  }))
}

variable "region" {
  type = string
  description = "AWS Region"
}