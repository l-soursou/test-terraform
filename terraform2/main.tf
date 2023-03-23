provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "my_ec2" {
    ami = var.AWS_AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
    tags = {
        Name = "terragrunt test 2"
    }

}
