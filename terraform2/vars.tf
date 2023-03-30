variable "AWS_REGION" {
    default = "us-east-1"
}

variable "AWS_AMIS" {
    type = map
    default = {
        "us-east-1" = "ami-00c39f71452c08778"
        "us-east-2" = "ami-0767edca44a1d5c90"
    }
}
