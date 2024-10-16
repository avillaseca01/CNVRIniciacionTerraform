#script to create keypairs for the VMs
mkdir -p ./tmp/keys

for i in $(seq 1 6); do
  echo $i
  openstack keypair create vm$i > ./tmp/keys/vm$i
done