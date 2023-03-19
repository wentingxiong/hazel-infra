module "backend" {
  source        = "../../modules/backend"
  bucket_name   = "hazel-s3-tfstate"
  dynamodb_name = "dynamodb-tfstate"
  environment   = var.environment
}