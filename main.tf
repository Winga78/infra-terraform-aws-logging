module "cloudwatch" {
  source            = "./modules/cloudwatch"
  repository_name   = var.services
}


module "cloudtrail" {
  source            = "./modules/cloudtrail"
  group4BucketS3_id   = module.s3.group4BucketS3_id
  group4_cloudtrail_name = var.group4_cloudtrail_name
}

module "s3" {
  source            = "./modules/s3"
  group4BucketS3_id   = var.group4BucketS3_id
  group4BucketS3_name = var.group4BucketS3_name
}

module "ec2" {
  source            = "./modules/ec2"
  repository_name   = var.services
}

module "iam" {
  source            = "./modules/iam"
  repository_name   = var.services
}