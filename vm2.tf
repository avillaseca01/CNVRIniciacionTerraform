# Data sources to get the existing images information
data "openstack_images_image_v2" "cirros" {
    name = "cirros-0.3.4-x86_64-vnx"
}

# Data sources to get the existing flavours information
data "openstack_compute_flavor_v2" "m1-tiny" {
    name = "m1.tiny"
}

# Data sources to get the existing network information
data "openstack_networking_network_v2" "net0" {
    name = "net0"
}

# Data keypair
data "openstack_compute_keypair_v2" "keypair" {
    name = "vm2"
}



# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm2" {
    name       = "vm2"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net0.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypair.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}