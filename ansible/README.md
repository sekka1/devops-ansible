Ansible Playbooks
=====================

A set of Ansible playbook to control computer systems.

## Requires

1. Ansible >= 1.7.1


## Running Ansible
1. Change directory to the root level of this repository
1. Then execute the various commands listed below

What are the Ansible options we are passing in:

-i hosts/hosts_all.ini - This is the target host's information that the Ansible playbooks will connect to and execute
the playbook(s) on.  It doesnt mean that it will hit every host in here it just names the hosts, the connection information
such as passwords, ports, etc and variables.

yml file - The yml file is a playbook that you want to execute.  This playbook includes the end target machine(s) reference in
the hosts_all.ini file and what "roles" to apply to it.  "roles" are what activities to perform on this host.

## Setting up Ansible on a CoreOS system
CoreOS does not come with a pre-install python binary, so we have to go in there and set that up.

This has to run before any other Ansible playbooks will work on a CoreOS cluster.

    ansible-playbook -i hosts/hosts_all.ini ansible/playbooks/coreos-bootstrap.yml

## MongoDB

Current version: 2.6.5

[https://registry.hub.docker.com/_/mongo/](https://registry.hub.docker.com/_/mongo/)

Persistent file located: /home/core/mongo-files/data
Key file located: /home/core/mongo-files/mongodb-keyfile

### Start
    ansible-playbook -i hosts/hosts_all.ini ansible/roles/mongodb/start_coreos.yml

### Destroy
This will remove the fleet unit files and turn off every node in the MongoDB cluster.

    ansible-playbook -i hosts/hosts_all.ini ansible/roles/mongodb/destroy_coreos.yml

### Checking if MongoDB cluster is up
Connect to it via the mongo cli via an interactive shell

Get onto one of the CoreOS nodes:

     docker run -it --link mongo:mongo --rm mongo:2.6.5 /bin/bash

That would put you in a mongoDB container linked to the mongoDB server

     use admin
     db.auth("siteRootAdmin", "tHRjDK0IDHYLNOkDTfsCOr/Rx4iPPAmhqyh/IOjC/nNmV8rZsVxRTKk05C0RBBgN");
     # show the status
     rs.status()


## Firewall White Listing

    ansible-playbook -i hosts/hosts_all.ini ansible/playbooks/firewall-apply-whitelist.yml

The white list IP and ports are setin in the hosts/group_vars/all.yml file.

Warning: you can block yourself from this machine if you dont set a source IP that you can come from.


## Redis
Current version: 2.8.17

[https://registry.hub.docker.com/_/redis/](https://registry.hub.docker.com/_/redis/)


The Redis cluster is setup with a master and a number of slave machines using Redis replication:

[http://redis.io/topics/replication](http://redis.io/topics/replication)

It is also setup with Redis Sentinal to fail over the master and promote a slave when the Sentinal looses quorum.

[http://redis.io/topics/sentinel](http://redis.io/topics/sentinel)

Persistent file located: /home/core/redis-files/data/
Redis Sentinal config file: /home/core/redis-files/sentinal.conf

## Finding the master
The question now is how do you find the master?  You have to know at least one of the sentinels IP address and you can connect
to it and ask it where the master is.  There are client side libraries for Redis to help you perform this task.

Sentinal port: 26379
Sentinal pool name: mymaster


### Start Redis Servers

     ansible-playbook -i hosts/hosts_all.ini ansible/roles/redis/start_master.yml
     ansible-playbook -i hosts/hosts_all.ini ansible/roles/redis/start_slaves.yml

### Destroy Redis Servers

    ansible-playbook -i hosts/hosts_all.ini ansible/roles/redis/destroy_redis.yml

### Start Redis sentinels
The sentinels are started in --net=host mode.  Without starting it in this mode, the sentinels dont correct detect it's own IP.

     ansible-playbook -i hosts/hosts_all.ini ansible/roles/redis/start_sentinels.yml

### Destroy Redis sentinels

    ansible-playbook -i hosts/hosts_all.ini ansible/roles/redis/destroy_sentinels.yml

### Redis CLI
You can get information on any node by telnetting into it and running Redis CLI commands:

     telnet db1.navabit.com 6379

Then you can run the info command on this server to see the state:

     INFO

This will return a bunch of information.  One of the item is the "role".  Either master or slave.