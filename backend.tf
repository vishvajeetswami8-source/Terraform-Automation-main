terraform {
  backend "s3" {
    bucket = "mydev-project-terraform-sample-batch-aws-devops-azure-vs"
    key    = "main"
    # the bucket's actual region is ap-south-1 (Mumbai). Update to match S3 bucket location
    region = "ap-south-1"
    # `dynamodb_table` is deprecated in recent Terraform versions. Use lockfile-based locking
    # if you don't need DynamoDB table-based state locks. Set `use_lockfile = true` to enable
    # local lockfile-based locking. If you want to use DynamoDB locking instead, restore
    # `dynamodb_table` and ensure the DynamoDB table exists in the same region as the S3 bucket.
    use_lockfile = true
  }
}
