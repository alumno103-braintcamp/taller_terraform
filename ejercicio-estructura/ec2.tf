resource "aws_instance" "vm-instance-imp" {
    ami                                  = "ami-0889a44b331db0194"
    //arn                                  = "arn:aws:ec2:us-east-1:696246431611:instance/i-0f3c758c4a9d2f68b"
    associate_public_ip_address          = true
    availability_zone                    = "us-east-1d"
    //cpu_threads_per_core                 = 1
    disable_api_stop                     = false
    disable_api_termination              = false
    ebs_optimized                        = false
    get_password_data                    = false
    hibernation                          = false
    //id                                   = "i-0f3c758c4a9d2f68b"
    instance_initiated_shutdown_behavior = "stop"
    //instance_state                       = "running"
    instance_type                        = "t2.micro"
    //ipv6_address_count                   = 0
    //ipv6_addresses                       = []
    monitoring                           = false
    //placement_partition_number           = 0
    //primary_network_interface_id         = "eni-0e65a36265556d651"
    //private_dns                          = "ip-172-31-19-242.ec2.internal"
    //private_ip                           = "172.31.19.242"
    //public_dns                           = "ec2-54-167-51-180.compute-1.amazonaws.com"
    //public_ip                            = "54.167.51.180"
    //secondary_private_ips                = []
    security_groups                      = [
        "launch-wizard-7",
    ]
    source_dest_check                    = true
    subnet_id                            = "subnet-cdf17780"
    tags                                 = {
        "Name" = "ec2-importado"
    }
    tags_all                             = {
        "Name" = "ec2-importado"
    }
    //tenancy                              = "default"
    vpc_security_group_ids               = [
        "sg-004ab5f8b1321e5f8",
    ]

    /*capacity_reservation_specification {
        capacity_reservation_preference = "open"
    }

    /*cpu_options {
        core_count       = 1
        threads_per_core = 1
    }

    credit_specification {
        cpu_credits = "standard"
    }

    enclave_options {
        enabled = false
    }*/

    maintenance_options {
        auto_recovery = "default"
    }

    /*metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 2
        http_tokens                 = "required"
        instance_metadata_tags      = "disabled"
    }

    private_dns_name_options {
        enable_resource_name_dns_a_record    = true
        enable_resource_name_dns_aaaa_record = false
        hostname_type                        = "ip-name"
    }*/

    /*root_block_device {
        delete_on_termination = true
        device_name           = "/dev/xvda"
        encrypted             = false
        iops                  = 3000
        tags                  = {}
        throughput            = 125
        volume_id             = "vol-0dba1df95e449c0d4"
        volume_size           = 8
        volume_type           = "gp3"
    }*/
}