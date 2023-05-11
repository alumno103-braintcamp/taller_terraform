resource "aws_instance" "vm-instance-imp" {
    ami                                  = "ami-0889a44b331db0194"
    availability_zone                    = var.zone
    //instance_type = "t3.micro"
    instance_type = var.variable-imcompleta
    tags                                 = {
        "Name" = "ec2-importado"
    }
}