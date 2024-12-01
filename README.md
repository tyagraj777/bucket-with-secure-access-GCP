# bucket-with-secure-access-GCP
Automation for setting up a Cloud Storage Bucket with Secure Access Policies using Terraform with automated testing

usage instructions:
* update service account ID for GCP project (or relevant user account in main.tf) before validation
* update GCP projet ID and reagion as needed in terraform.tfvars files before validation
* make sure all files are in custom terraform dir including variables.tf
* test creation with "test-gcp-storage.sh" for conclusion


Key Features of the Project

1. Versioning: Enabled for object recovery.

2. Lifecycle Rules: Deletes objects older than 30 days.

3. Uniform Bucket Access: Ensures all permissions are managed at the bucket level.

IAM Bindings:

a. Admin: Full access to the bucket.

b. Reader: Read-only access to the objects.

This project ensures a secure and structured setup for GCP Cloud Storage with automated deployment and testing.

Note - for testing use the shaell sscript included, optionally can be used to validate and apply terraform script***


