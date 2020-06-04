resource "aws_s3_bucket" "main" {
  bucket = "my-bucket-name"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = var.bucket_tag
  }
}
