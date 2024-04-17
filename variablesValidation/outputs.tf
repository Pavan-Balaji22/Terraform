output "s3arn" {
  value = data.aws_s3_bucket.bucket-data.arn
}

output "name" {
  value = data.aws_s3_bucket.bucket-data.bucket
}

output "region" {
  value = data.aws_s3_bucket.bucket-data.region
}
