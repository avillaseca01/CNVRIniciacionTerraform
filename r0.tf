#Data
data "openstack_networking_router_v2" "r0" {
    name = "r0"
}

data "openstack_networking_network_v2" "ExtNet" {
    name = "ExtNet"
}

data "openstack_networking_subnet_v2" "subnet1"{
    name = "subnet1"
}

data "openstack_networking_subnet_v2" "subnet2"{
    name = "subnet2"
}

resource "openstack_networking_router_v2" "r0"{
    name = data.openstack_networking_router_v2.r0.name
    external_network_id = data.openstack_networking_network_v2.ExtNet.id
}

resource "openstack_networking_router_interface_v2" "r0_net1"{
    router_id = openstack_networking_router_v2.r0.id
    subnet_id = openstack_networking_subnet_v2.subnet1.id
}

resource "openstack_networking_router_interface_v2" "r0_net2"{
    router_id = openstack_networking_router_v2.r0.id
    subnet_id = openstack_networking_subnet_v2.subnet2.id
}