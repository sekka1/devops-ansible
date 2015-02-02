CoreOS
==========
The set of db"x" server's cloud-configs all have to be unique because etcd peer to peer encryption, etcd client authentication,
and fleet client encryption and authentication has been enabled.  This means that every server needs certificates that matches
the IP address to the hostname.

In each cloud-config for the servers, it has unique certs added to them.

In each cloud-config the meta data for fleet are important.  There are automation that depends on these being there to do
various things like, starting up DBs in a certain sequence and setting up masters then starting up the slaves, etc.

## Fleet meta data

     metadata: region=us-east,role=database,disk=ssd/hd,provider=ovh,name=db1
     

## Generating new certs
All the certs has to be generated from the same CA.

### Start a CA server
1. Get a golang image b/c we are going to use CoreOS CA server they have built

         docker pull golang

1. Run the container:

         docker run -i -t golang /bin/bash

1. Clone out the coreos etcd-ca

         git clone https://github.com/coreos/etcd-ca
         cd etcd-ca

1. Build it

        ./build

### Generating certificates

1. Change dir to the bin dir

         cd bin

1. Create a new cert for a host

         ./etcd-ca new-cert --ip 198.27.74.208 db1.navabit.com

1. sign it

         ./etcd-ca sign db1.navabit.com

1. Output the CA chain.  You need to save this output

         ./etcd-ca chain db1.navabit.com

1. Output cert and private key.  You need to save this output

         ./etcd-ca export --insecure db1.navabit.com

## Etcd and Fleet usage with encryption

With encryption turned on for client authentication you need correct SSL keys to talk to the nodes.  The correct keys
are on the system.

Export out variables on where items we will need.  SSH into one of these CoreOS nodes and cut and paste the following:

     LEADER_IP=198.27.74.208
     FOLLOWER_IP=142.4.216.210

     KEY_CA_CERT=/home/core/ca.crt
     KEY_CERT=/home/core/key.crt
     KEY_KEY=/home/core/key.key

### Etcd

Put a value directly to the leader:

    curl  --cacert ${KEY_CA_CERT} --cert ${KEY_CERT} --key ${KEY_KEY} -L https://${LEADER_IP}:4001/v2/keys/foo2 -X PUT -d value=bar -v

Get a value from the leader:

    curl --cacert ${KEY_CA_CERT} --cert ${KEY_CERT} --key ${KEY_KEY} -L https://${LEADER_IP}:4001/v2/leader -v


Put a value to a follower.  Notice that you are redirected to the leader for the write operation.

    curl  --cacert ${KEY_CA_CERT} --cert ${KEY_CERT} --key ${KEY_KEY} -L https://${FOLLOWER_IP}:4001/v2/keys/foo2 -X PUT -d value=bar -v

Get a value from a follower:

    curl  --cacert ${KEY_CA_CERT} --cert ${KEY_CERT} --key ${KEY_KEY} -L https://${FOLLOWER_IP}:4001/v2/keys/foo2 -X GET -v

### Fleet
You can use any of the normal fleet commands.  You just have to put in the cert and endpoint flags.

List-machines:

    fleetctl --endpoint=https://${FOLLOWER_IP}:4001 --etcd-cafile=${KEY_CA_CERT} --etcd-certfile=${KEY_CERT} --etcd-keyfile=${KEY_KEY} list-machines

list-units:

    fleetctl --endpoint=https://${FOLLOWER_IP}:4001 --etcd-cafile=${KEY_CA_CERT} --etcd-certfile=${KEY_CERT} --etcd-keyfile=${KEY_KEY} list-units


