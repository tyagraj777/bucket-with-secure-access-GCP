provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "secure_bucket" {
  name                        = "secure-storage-bucket-${var.project_id}"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}

resource "google_storage_bucket_iam_binding" "bucket_admin" {
  bucket = google_storage_bucket.secure_bucket.name
  role   = "roles/storage.admin"

echo "update the compute service acoung details below...!!!" 
  members = [
    "serviceAccount:xxxxxxxxxxxx-compute@developer.gserviceaccount.com"
  ]
}

resource "google_storage_bucket_iam_binding" "bucket_reader" {
  bucket = google_storage_bucket.secure_bucket.name
  role   = "roles/storage.objectViewer"

  members = [
    "serviceAccount:284976422705-compute@developer.gserviceaccount.com"
  ]
}

output "bucket_name" {
  description = "The name of the created storage bucket"
  value       = google_storage_bucket.secure_bucket.name
}

output "bucket_url" {
  description = "The URL of the created storage bucket"
  value       = "gs://${google_storage_bucket.secure_bucket.name}"
}
