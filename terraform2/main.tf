provider "aws" {
    region = var.AWS_REGION
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_KEY
}

resource "aws_instance" "my_ec2" {
    ami = var.AWS_AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
    tags = {
        Name = "terragrunt test 2"
    }

}