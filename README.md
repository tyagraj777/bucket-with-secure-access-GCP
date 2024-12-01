# bucket-with-secure-access-GCP
Automation for setting up a Cloud Storage Bucket with Secure Access Policies using Terraform with automated testing


Key Features of the Project

1. Versioning: Enabled for object recovery.

2. Lifecycle Rules: Deletes objects older than 30 days.

3. Uniform Bucket Access: Ensures all permissions are managed at the bucket level.

IAM Bindings:

a. Admin: Full access to the bucket.

b. Reader: Read-only access to the objects.

This project ensures a secure and structured setup for GCP Cloud Storage with automated deployment and testing.

Note - for testing use the shaell sscript included, optionally can be used to validate and apply terraform script***


