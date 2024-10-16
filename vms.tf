# Data sources to get the existing images information
data "openstack_images_image_v2" "cirros" {
  name = "cirros-0.3.4-x86_64-vnx"
}

# Data sources to get the existing flavors information
data "openstack_compute_flavor_v2" "m1-tiny" {
  name = "m1.tiny"
}

# Data sources to get the existing networks information
data "openstack_networking_network_v2" "net1" {
  name = "net1"
}

data "openstack_networking_network_v2" "net2" {
  name = "net2"
}

# Data sources to get the existing keypairs information
data "openstack_compute_keypair_v2" "vm1_keypair" {
  name = "vm1"
}

data "openstack_compute_keypair_v2" "vm2_keypair" {
  name = "vm2"
}

data "openstack_compute_keypair_v2" "vm3_keypair" {
  name = "vm3"
}

data "openstack_compute_keypair_v2" "vm4_keypair" {
  name = "vm4"
}

data "openstack_compute_keypair_v2" "vm5_keypair" {
  name = "vm5"
}

data "openstack_compute_keypair_v2" "vm6_keypair" {
  name = "vm6"
}

# Resource to create VM1 in net1
resource "openstack_compute_instance_v2" "vm1" {
  name        = "vm1"
  image_name  = data.openstack_images_image_v2.cirros.name
  flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name
  key_pair    = data.openstack_compute_keypair_v2.vm1_keypair.name

  network {
    name = data.openstack_networking_network_v2.net1.name
  }

  user_data = <<-EOT
  #!/bin/bash
  echo "VM1 launched by Terraform" > /info.txt
  EOT
}

# Resource to create VM2 in net1
resource "openstack_compute_instance_v2" "vm2" {
  name        = "vm2"
  image_name  = data.openstack_images_image_v2.cirros.name
  flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name
  key_pair    = data.openstack_compute_keypair_v2.vm2_keypair.name

  network {
    name = data.openstack_networking_network_v2.net1.name
  }

  user_data = <<-EOT
  #!/bin/bash
  echo "VM2 launched by Terraform" > /info.txt
  EOT
}

# Resource to create VM3 in net1
resource "openstack_compute_instance_v2" "vm3" {
  name        = "vm3"
  image_name  = data.openstack_images_image_v2.cirros.name
  flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name
  key_pair    = data.openstack_compute_keypair_v2.vm3_keypair.name

  network {
    name = data.openstack_networking_network_v2.net1.name
  }

  user_data = <<-EOT
  #!/bin/bash
  echo "VM3 launched by Terraform" > /info.txt
  EOT
}

# Resource to create VM4 in net2
resource "openstack_compute_instance_v2" "vm4" {
  name        = "vm4"
  image_name  = data.openstack_images_image_v2.cirros.name
  flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name
  key_pair    = data.openstack_compute_keypair_v2.vm4_keypair.name

  network {
    name = data.openstack_networking_network_v2.net2.name
  }

  user_data = <<-EOT
  #!/bin/bash
  echo "VM4 launched by Terraform" > /info.txt
  EOT
}

# Resource to create VM5 in net2
resource "openstack_compute_instance_v2" "vm5" {
  name        = "vm5"
  image_name  = data.openstack_images_image_v2.cirros.name
  flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name
  key_pair    = data.openstack_compute_keypair_v2.vm5_keypair.name

  network {
    name = data.openstack_networking_network_v2.net2.name
  }

  user_data = <<-EOT
  #!/bin/bash
  echo "VM5 launched by Terraform" > /info.txt
  EOT
}

# Resource to create VM6 in net2
resource "openstack_compute_instance_v2" "vm6" {
  name        = "vm6"
  image_name  = data.openstack_images_image_v2.cirros.name
  flavor_name = data.openstack_compute_flavor_v2.m1-tiny.name
  key_pair    = data.openstack_compute_keypair_v2.vm6_keypair.name

  network {
    name = data.openstack_networking_network_v2.net2.name
  }

  user_data = <<-EOT
  #!/bin/bash
  echo "VM6 launched by Terraform" > /info.txt
  EOT
}
