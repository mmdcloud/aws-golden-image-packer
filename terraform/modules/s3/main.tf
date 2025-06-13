# S3 Bucket for build artifacts
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  lifecycle {
    prevent_destroy = false
  }
}