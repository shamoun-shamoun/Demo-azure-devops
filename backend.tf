terraform {
  backend "s3" {
    bucket = "tf-state-bucket-shamoun"
    key = "main"
    region = "eu-west-1"
    dynamodb_table = "tf-dynamodb-table-shamoun"
  }
}
