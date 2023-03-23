variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "us-east-1"
}

variable "AWS_AMIS" {
    type = map
    default = {
        "us-east-1" = "ami-059379b75c70345bb"
        "us-east-2" = "ami-0767edca44a1d5c90"
    }
}