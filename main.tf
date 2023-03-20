provider "aws" {
    region = "us-east-1"
    access_key = "AKIAQK2LAPS5L523CT7T"
    secret_key = "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"
}

resource "aws_instance" "my_ec2_instance" {
    ami = "ami-059379b75c70345bb"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform jenkins"
    }
}
