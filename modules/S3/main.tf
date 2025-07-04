resource "aws_s3_bucket" "aws_s3_bucket_logging" {
  bucket        = var.group4BucketS3_name
  force_destroy = true
}