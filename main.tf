resource "random_id" "random_storage_id_suffix" {
  byte_length = 4
}

locals {
  bucket_name = "${var.project_id}-${random_id.random_storage_id_suffix.hex}"
}

resource "google_storage_bucket" "my-bucket" {
  name          = local.bucket_name
  location      = "US"
  force_destroy = true
}