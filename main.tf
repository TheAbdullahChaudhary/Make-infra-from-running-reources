provider "aws" {
  region = "ap-south-1"
}

# Add empty resource blocks to be imported
# aws_instance.my_instance:
resource "aws_instance" "my_instance" {
    ami                                  = "ami-0f58b397bc5c1f2e8"
    associate_public_ip_address          = true
    availability_zone                    = "ap-south-1b"
    instance_type                        = "t2.micro"
    key_name                             = "abdullah_key_new"
    subnet_id                            = "subnet-021075ff329a6aa2f"
    tags                                 = {
        "Name" = "Ali-terraform"
    }

    vpc_security_group_ids               = [
        "sg-05bf98f6946eb3e1a",
    ]
}
