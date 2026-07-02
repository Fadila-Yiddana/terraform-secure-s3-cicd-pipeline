resource "aws_s3_bucket" "project_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "Terraform CI/CD Demo Bucket"
  }
}


resource "aws_s3_bucket_versioning" "project_bucket_versioning" {
  bucket = aws_s3_bucket.project_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "project_bucket_encryption" {
  bucket = aws_s3_bucket.project_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "project_bucket_public_access" {
  bucket = aws_s3_bucket.project_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "project_bucket_ownership" {
  bucket = aws_s3_bucket.project_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}