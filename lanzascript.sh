/lab/cnvr/bin/get-openstack-tutorial.sh 
cd /mnt/tmp/openstack_lab-antelope_4n_classic_ovs-v04 
sudo vnx -f openstack_lab.xml --create 
sudo vnx -f openstack_lab.xml -x start-all,load-img 
sudo vnx_config_nat ExtNet $(ip route | grep default | cut -d" " -f 5) 