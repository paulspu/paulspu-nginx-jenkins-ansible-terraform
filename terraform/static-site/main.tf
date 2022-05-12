provider "aws" {
    region=var.region
    profile=var.profile
}

resource "aws_instance" "site" {
    ami = "ami-09d56f8956ab235b3"
    instance_type="t2.micro"
    key_name="devops"
    vpc_security_group_ids = ["sg-0db736cabdd2e7193","sg-0b18ef7fd37511c8a"]
        tags = {
            Name = var.name
            group = var.group
        }
}