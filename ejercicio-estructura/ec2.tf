resource "aws_instance" "wm-importada" {
    ami                                  = "ami-022e1a32d3f742bd8"
    associate_public_ip_address          = true
    availability_zone                    = "us-east-1b"
    instance_type                        = "t3.micro"
    security_groups                      = [
        "launch-wizard-1",
    ]
    subnet_id                            = "subnet-01a71706900d66672"
    tags                                 = {
        "Name" = "servidor-microervicios"
    }
}