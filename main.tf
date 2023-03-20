provider "aws" {
    region = "us-east-1"
    access_key = var.AWS_ACCESS_KEY
    secret_key = var.AWS_SECRET_KEY
}

resource "aws_instance" "my_ec2_instance" {
    ami = "ami-059379b75c70345bb"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform jenkins"
    }
}
