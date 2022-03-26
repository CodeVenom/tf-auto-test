module "cb_bucket" {
  source = "../../modules/s3-default"

  bucketName = "jjb-cb"
}
