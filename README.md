DevOps Repository
===========================
This repository holds various DevOps items

# Directories

## ansible
This is a set of Ansible automation to control applications.  Further details on how to use it
it in this directory

## hosts
This is a set of Ansible inventory files holding host information about systems that can be targeted by Ansible
for automation.

The reason this folder is outside of the ansible directory is b/c this is suppose to be the "data" for Ansible.  Any
parameters or environment specific data should be in this set of files and not held in the ansible folders.

The goal of this is that you can bring up any arbitrary set of nodes and run the same Ansible automation against it by
just changing the information held in the "hosts" directory.
