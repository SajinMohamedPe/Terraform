resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = {
    Name        = "My Terraform bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.example.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  key          = "index.html"
  bucket       = aws_s3_bucket.example.id
  source       = "index.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  key          = "error.html"
  bucket       = aws_s3_bucket.example.id
  source       = "error.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.example.id
  key    = "jpeg_image.jpeg"                        # The name of the file in the S3 bucket
  source = "/Users/Sajin/Downloads/jpeg_image.jpeg" # Absolute path to the file on your machine
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on = [
    aws_s3_bucket_acl.example
  ]
}