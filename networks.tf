# network 1
resource "openstack_networking_network_v2" "net1" {
    name = "net1"
}

# network 2
resource "openstack_networking_network_v2" "net2" {
    name = "net2"
}

# subnetwork 1
resource "openstack_networking_subnet_v2" "subnet1" {
    name            = "subnet1"
    network_id      = openstack_networking_network_v2.net1.id
    cidr            = "10.1.10.0/24"
    ip_version      = 4
    dns_nameservers = ["8.8.8.8"]
    gateway_ip      = "10.1.10.1"
    allocation_pool {
        start = "10.1.10.8"
        end   = "10.1.10.100"
    }
}

# subnetwork 2
resource "openstack_networking_subnet_v2" "subnet2" {
    name            = "subnet2"
    network_id      = openstack_networking_network_v2.net2.id
    cidr            = "10.1.20.0/24"
    ip_version      = 4
    dns_nameservers = ["8.8.8.8"]
    gateway_ip      = "10.1.20.1"
    allocation_pool {
        start = "10.1.20.8"
        end   = "10.1.20.100"
    }
}
