variable "bucket_name" {
  type        = string
  default     = "my-terraform3-s3-bucket"
  description = "my terraform bucket"
}

variable "access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "secret_key" {
  type        = string
  description = "AWS secret key"
}