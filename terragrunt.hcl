#path - /terragrunt-ec2/dev/terragrunt.hcl

terraform {
  source = "tfr:///terraform-aws-modules/ec2-instance/aws?version=4.0.0"
}


generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
  provider "aws" {
    region  = "us-east-1"
    access_key = "AKIAQK2LAPS5L523CT7T"
    secret_key = "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"
  }
EOF
}


inputs = {
  ami           = "ami-059379b75c70345bb"
  instance_type = "t2.micro"
  tags = {
    Name = "Terragrunt Tutorial: EC2"
  }
}
