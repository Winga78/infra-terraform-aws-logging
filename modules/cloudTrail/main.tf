resource "aws_cloudtrail" "group4_cloudtrail" {
  depends_on = [var.group4BucketS3_id]

  name                          = var.aws_cloudtrail_name
  s3_bucket_name                = var.group4BucketS3_id
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = false
  is_logging                    = true   
}



