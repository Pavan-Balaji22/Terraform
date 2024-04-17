provider "aws" {
  region = "ca-central-1"

  default_tags {

    tags = {
      provisionedthrough = "terraform"
    }

  }
}

data "aws_s3_bucket" "bucket-data" {
  bucket = "my-aws-bucket-pbk"

}

resource "aws_iam_policy" "iam-policy" {
  name = "bucketPolicy1"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:Get*",
          "s3:List*"
        ],
        "Resource" : "${data.aws_s3_bucket.bucket-data.arn}"
      }
    ]
  })


}
