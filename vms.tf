# Data sources to get the existing images information
data "openstack_images_image_v2" "cirros" {
    name = "cirros-0.3.4-x86_64-vnx"
}

# Data sources to get the existing flavours information
data "openstack_compute_flavor_v2" "m1-tiny" {
    name = "m1.tiny"
}

# Data sources to get the existing network information
data "openstack_networking_network_v2" "net1" {
    name = "net1"
}

# Data sources to get the existing network information
data "openstack_networking_network_v2" "net2" {
    name = "net2"
}
# Data keypair
data "openstack_compute_keypair_v2" "keypairvm1" {
    name = "vm1"
}
# Data keypair
data "openstack_compute_keypair_v2" "keypairvm2" {
    name = "vm2"
}
# Data keypair
data "openstack_compute_keypair_v2" "keypairvm3" {
    name = "vm3"
}
# Data keypair
data "openstack_compute_keypair_v2" "keypairvm4" {
    name = "vm4"
}
# Data keypair
data "openstack_compute_keypair_v2" "keypairvm5" {
    name = "vm5"
}
# Data keypair
data "openstack_compute_keypair_v2" "keypairvm6" {
    name = "vm6"
}

# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm1" {
    name       = "vm1"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net1.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypairvm1.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}

# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm2" {
    name       = "vm2"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net1.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypairvm2.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}

# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm3" {
    name       = "vm3"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net1.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypairvm3.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}

# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm4" {
    name       = "vm4"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net2.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypairvm4.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}

# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm5" {
    name       = "vm5"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net2.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypairvm5.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}

# Resource to create a new VM
resource "openstack_compute_instance_v2" "vm6" {
    name       = "vm6"
    image_name = data.openstack_images_image_v2.cirros.name
    flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name

    network {
        name = data.openstack_networking_network_v2.net2.name
    }

    key_pair = data.openstack_compute_keypair_v2.keypairvm6.name

    user_data = <<-EOT
        #!/bin/bash
        echo "VM lauched by Terraform > info.txt
    EOT
}