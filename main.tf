provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_s3_bucket" "demo_buckets" {

    bucket = var.bucket
  
}

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.demo_buckets.id
    versioning_configuration {
     status= var.versioning
    }
}
