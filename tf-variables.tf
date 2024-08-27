variable "tags" {
  type = map(any)
  description = "Tags of aws rotules"
}

variable "bucket" {
  type = string
  description = "Name of bucket S3"
}